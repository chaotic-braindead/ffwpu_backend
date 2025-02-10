from django.urls import path
from . import views

urlpatterns = [
    path("", views.MemberListCreate.as_view()),
    path("<str:pk>", views.MemberRetrieveDeleteUpdate.as_view()),
]
