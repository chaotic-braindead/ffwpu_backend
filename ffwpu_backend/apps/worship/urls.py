from django.urls import path

from . import views

urlpatterns = [
    path("", views.WorshipListCreate.as_view()),
    path("<int:worship_id>", views.WorshipRetrieveUpdateDelete.as_view()),
    path("<int:worship_id>/add-attendee", views.WorshipAddAttendee.as_view()),
]
