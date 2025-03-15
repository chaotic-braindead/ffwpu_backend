from django.urls import path

from . import views

urlpatterns = [
    path("", views.DonationListCreate.as_view()),
    path("<int:pk>", views.DonationRetrieveDeleteUpdate.as_view()),
]
