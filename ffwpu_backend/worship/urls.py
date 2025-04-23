from rest_framework.routers import DefaultRouter
from django.urls import path, include
from .views import *

router = DefaultRouter()
router.register(r"worship", WorshipEventViewSet)
router.register(r"worship-attendee", WorshipAttendeeViewSet)
router.register(r"worship-image", WorshipImageViewSet)

urlpatterns = [path("", include(router.urls))]
