from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from rest_framework.decorators import (
    api_view,
    permission_classes,
)
from rest_framework import status


@api_view(["POST"])
@permission_classes([])
def admin_login(request):
    username = request.data.get("username")
    password = request.data.get("password")

    user = authenticate(username=username, password=password)

    if user is not None:
        token, _ = Token.objects.get_or_create(user=user)
        return Response({"token": token.key}, status=status.HTTP_200_OK)

    return Response(
        {"error": "Invalid credentials or not an admin"},
        status=status.HTTP_401_UNAUTHORIZED,
    )


@api_view(["POST"])
def admin_add(request):
    username = request.data.get("username")
    email = request.data.get("email")
    password = request.data.get("password")

    if not (username and email and password):
        return Response(
            {"error": "All fields are required"}, status=status.HTTP_400_BAD_REQUEST
        )
    if User.objects.filter(username=username).exists():
        return Response(
            {"error": "Username already exists"}, status=status.HTTP_400_BAD_REQUEST
        )
    password = request.data.get("password")

    user = User.objects.create_superuser(
        username=username, email=email, password=password
    )
    return Response(
        {"message": "Admin created successfully!"}, status=status.HTTP_201_CREATED
    )


@api_view(["GET"])
def check_auth(request):
    return Response({"message": "authenticated", "user": request.user.username})


@api_view(["POST"])
def change_admin_password(request):
    user = request.user
    print(user)
    print(request.data)

    # Ensure user is a superuser
    if not user.is_superuser:
        return Response(
            {"error": "Only admin users can use this endpoint"},
            status=status.HTTP_403_FORBIDDEN,
        )

    old_password = request.data.get("old_password")
    new_password = request.data.get("new_password")
    confirm_password = request.data.get("confirm_password")

    # Validate input fields
    if not (old_password and new_password and confirm_password):
        return Response(
            {
                "error": "All fields are required (old_password, new_password, confirm_password)"
            },
            status=status.HTTP_400_BAD_REQUEST,
        )

    # Verify old password is correct
    if not user.check_password(old_password):
        return Response(
            {"error": "Current password is incorrect"},
            status=status.HTTP_400_BAD_REQUEST,
        )

    # Check if new passwords match
    if new_password != confirm_password:
        return Response(
            {"error": "New passwords do not match"}, status=status.HTTP_400_BAD_REQUEST
        )

    # Set the new password
    user.set_password(new_password)
    user.save()

    # Invalidate old token and create new one
    Token.objects.filter(user=user).delete()
    new_token = Token.objects.create(user=user)

    return Response(
        {"message": "Password changed successfully", "new_token": new_token.key},
        status=status.HTTP_200_OK,
    )
