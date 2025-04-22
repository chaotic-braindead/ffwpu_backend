from rest_framework.routers import DefaultRouter
from django.urls import path, include
from .views import *

router = DefaultRouter()
router.register(r"", BlessingViewSet)
router.register(r"recipient", BlessingRecipientViewSet)

urlpatterns = [path("", include(router.urls))]
