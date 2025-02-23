from django.urls import path

from . import views

urlpatterns = [
    path("", views.WorshipListCreate.as_view()),
    path("<str:pk>", views.WorshipRetrieveUpdateDelete.as_view()),
]
