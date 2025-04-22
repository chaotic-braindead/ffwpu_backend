from rest_framework.routers import DefaultRouter
from django.urls import path, include
from .views import *

router = DefaultRouter()
router.register(r"", DonationViewSet)

url_patterns = [path("", include(router.urls))]
