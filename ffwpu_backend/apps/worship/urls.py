from django.urls import path

from . import views

urlpatterns = [
    path("", views.WorshipListCreate.as_view()),
    path("<int:pk>", views.WorshipRetrieveUpdateDelete.as_view()),
    path("<int:pk>/add-attendee", views.WorshipAddAttendee.as_view()),
    path("<int:pk>/remove-attendee", views.WorshipRemoveAttendee.as_view()),
    path("<int:pk>/add-guest", views.WorshipAddGuest.as_view()),
    path("<int:pk>/remove-guest", views.WorshipRemoveGuest.as_view()),
]
