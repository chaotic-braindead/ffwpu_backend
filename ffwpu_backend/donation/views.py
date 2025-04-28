from .serializers import *
from rest_framework import viewsets
from rest_framework.decorators import action
from rest_framework.response import Response
from django.db.models import Sum, Avg
from django.db.models.functions import ExtractMonth
from datetime import datetime
from django.db.models.functions import Concat
from django.db.models import Value as V
from django.db.models.functions import TruncMonth, TruncYear, TruncWeek

# Create your views here.


class DonationViewSet(viewsets.ModelViewSet):
    queryset = Donation.objects.all()
    serializer_class = DonationSerializer

    @action(detail=False, methods=["get"])
    def statistics(self, request):
        # Get query parameters
        currency = request.query_params.get("currency", "USD")
        current_month = datetime.now().month

        # Calculate statistics
        total_donation = self.queryset.aggregate(total=Sum("amount"))["total"] or 0
        average_donation = self.queryset.aggregate(avg=Avg("amount"))["avg"] or 0

        # Get top donors
        top_donors = (
            self.queryset.values(
                "member__given_name", "member__middle_name", "member__family_name"
            )
            .annotate(
                full_name=Concat(
                    "member__given_name",
                    V(" "),
                    "member__middle_name",
                    V(" "),
                    "member__family_name",
                    output_field=models.CharField(),
                ),
                total_amount=Sum("amount"),
            )
            .order_by("-total_amount")[:5]
        )
        monthly_data = (
            self.queryset.annotate(period=TruncMonth("date"))
            .values("period")
            .annotate(sum=Sum("amount"))
            .order_by("period")
        )

        weekly_data = (
            self.queryset.annotate(period=TruncWeek("date"))
            .values("period")
            .annotate(sum=Sum("amount"))
            .order_by("period")
        )

        yearly_data = (
            self.queryset.annotate(period=TruncYear("date"))
            .values("period")
            .annotate(sum=Sum("amount"))
            .order_by("period")
        )

        response_data = {
            "total_donation": total_donation,
            "average_donation": average_donation,
            "top_donors": [
                {"name": donor["full_name"], "amount": donor["total_amount"]}
                for donor in top_donors
            ],
            "time_series": {
                "monthly": [
                    {"date": item["period"], "amount": item["sum"]}
                    for item in monthly_data
                ],
                "weekly": [
                    {"date": item["period"], "amount": item["sum"]}
                    for item in weekly_data
                ],
                "yearly": [
                    {"date": item["period"], "amount": item["sum"]}
                    for item in yearly_data
                ],
            },
        }

        return Response(response_data)
