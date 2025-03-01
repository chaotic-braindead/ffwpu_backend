from django.urls import path

from . import views

urlpatterns = [
    path("", views.DonationListCreate.as_view()),
    path("<int:donation_id>", views.DonationRetrieveDeleteUpdate.as_view()),
]
