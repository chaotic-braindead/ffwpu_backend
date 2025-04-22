from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import *


router = DefaultRouter()
router.register(r"", ChurchViewSet)

url_patterns = [path("", include(router.urls))]
