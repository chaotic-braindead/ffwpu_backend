from django.urls import path
from . import views

urlpatterns = [
    path("", views.MemberList.as_view()),
    path("add", views.MemberCreate.as_view()),
    path("<str:pk>", views.MemberRetrieveDeleteUpdate.as_view()),
]
