from rest_framework.routers import DefaultRouter
from django.urls import path, include
from .views import *

router = DefaultRouter()
router.register(r"", WorshipEventViewSet)
router.register(r"attendee", WorshipAttendeeViewSet)

url_patterns = [path("", router.urls)]
