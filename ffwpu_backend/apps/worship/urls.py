from django.urls import path

from . import views

urlpatterns = [
    path("", views.WorshipListCreate.as_view()),
    path("<int:worship_id>", views.WorshipRetrieveUpdateDelete.as_view()),
    path("<int:worship_id>/add-attendee", views.WorshipAddAttendee.as_view()),
    path("<int:worship_id>/remove-attendee", views.WorshipRemoveAttendee.as_view()),
    path("<int:worship_id>/add-guest", views.WorshipAddGuest.as_view()),
    path("<int:worship_id>/remove-guest", views.WorshipRemoveGuest.as_view()),
]
