from rest_framework.routers import DefaultRouter
from django.urls import path, include
from .views import *

router = DefaultRouter()
router.register(r"", DonationViewSet)

urlpatterns = [path("", include(router.urls))]
