from django.urls import path
from . import views

urlpatterns = [
    path("", views.MemberListCreate.as_view()),
    path("<int:pk>", views.MemberRetrieveDeleteUpdate.as_view()),
    path("church", views.ChurchListCreate.as_view()),
    path("church/<int:pk>", views.ChurchRetrieveUpdateDelete.as_view()),
    path("currency", views.CurrencyListCreate.as_view()),
    path("currency/<str:pk>", views.CurrencyRetrieveUpdateDelete.as_view()),
    path("country", views.CountryListCreate.as_view()),
    path("country/<str:pk>", views.CountryRetrieveUpdateDelete.as_view()),
]
