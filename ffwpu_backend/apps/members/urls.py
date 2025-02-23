from django.urls import path
from . import views

urlpatterns = [
    path("", views.MemberListCreate.as_view()),
    path("<int:member_id>", views.MemberRetrieveDeleteUpdate.as_view()),
]
