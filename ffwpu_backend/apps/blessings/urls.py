from django.urls import path

from . import views

urlpatterns = [
    path("", views.BlessingListCreate.as_view()),
    path("<int:pk>", views.BlessingRetrieveUpdateDelete.as_view()),
    path("<int:pk>/add-member", views.AddMemberToBlessingView.as_view()),
    path("<int:pk>/remove-member", views.RemoveMemberFromBlessingView.as_view()),
    path("<int:pk>/add-guest", views.BlessingAddGuest.as_view()),
    path("<int:pk>/remove-guest", views.BlessingRemoveGuest.as_view()),
]
