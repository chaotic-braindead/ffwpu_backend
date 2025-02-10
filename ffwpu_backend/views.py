from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from rest_framework.decorators import (
    api_view,
    permission_classes,
    authentication_classes,
)
from rest_framework.authentication import TokenAuthentication, SessionAuthentication
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
@authentication_classes([SessionAuthentication, TokenAuthentication])
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

    user = User.objects.create_user(username=username, email=email, password=password)
    return Response(
        {"message": "Admin created successfully!"}, status=status.HTTP_201_CREATED
    )
