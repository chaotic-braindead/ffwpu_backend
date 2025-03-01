"""
URL configuration for ffwpu_backend project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path, include
from .views import admin_add, check_auth
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/members/", include("members.urls")),
    path("api/blessings/", include("blessings.urls")),
    path("api/worship/", include("worship.urls")),
    path("api/donations/", include("donations.urls")),
    path("api/login/", TokenObtainPairView.as_view()),
    path("api/refresh-token/", TokenRefreshView.as_view()),
    path("api/add-admin/", admin_add),
    path("api/check-auth/", check_auth),
]
