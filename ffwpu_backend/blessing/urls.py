from rest_framework.routers import DefaultRouter
from django.urls import path, include
from .views import *

router = DefaultRouter()
router.register(r"blessing", BlessingViewSet)
router.register(r"blessing-recipient", BlessingRecipientViewSet)

urlpatterns = [path("", include(router.urls))]
