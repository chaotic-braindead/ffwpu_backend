from rest_framework.routers import DefaultRouter
from .views import *
from django.urls import path, include

router = DefaultRouter()
router.register("member", MemberViewSet)
router.register("member-mission", MemberMissionViewSet)

urlpatterns = [path("", include(router.urls))]
