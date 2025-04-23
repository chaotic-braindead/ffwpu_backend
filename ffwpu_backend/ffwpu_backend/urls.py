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
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView


urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/", include("member.urls")),
    path("api/", include("blessing.urls")),
    path("api/", include("worship.urls")),
    path("api/donation/", include("donation.urls")),
    path("api/", include("region.urls")),
    path("api/church/", include("church.urls")),
    path("api/login/", TokenObtainPairView.as_view()),
    path("api/refresh-token/", TokenRefreshView.as_view()),
]
