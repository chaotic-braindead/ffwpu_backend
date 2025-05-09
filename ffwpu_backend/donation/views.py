from .serializers import *
from rest_framework import viewsets
from rest_framework.decorators import action
from rest_framework.response import Response
from django.db.models import Sum, Avg
from django.db.models.functions import ExtractMonth
from datetime import datetime, timedelta
from django.db.models.functions import Concat
from django.db.models import Value as V
from django.db.models.functions import TruncMonth, TruncYear, TruncWeek
from decimal import Decimal

# Create your views here.


class DonationViewSet(viewsets.ModelViewSet):
    queryset = Donation.objects.all()
    serializer_class = DonationSerializer

    @action(detail=False, methods=["get"])
    def statistics(self, request):
        CONVERSION_RATES = {
            "USD": 1.0,
            "PHP": 0.018,  # 1 PHP = 0.018 USD
            "EUR": 1.10,  # 1 EUR = 1.10 USD
            "JPY": 0.0067,  # 1 JPY = 0.0067 USD
            "KRW": 0.00075,  # 1 KRW = 0.00075 USD
            "CNY": 0.14,  # 1 CNY = 0.14 USD
        }

        def convert_to_usd(amount, from_currency):
            if amount is None:
                return float(0)
            converted = amount * Decimal(CONVERSION_RATES.get(from_currency, 1.0))
            return float(converted)

        # Calculate statistics
        total_donation = sum(
            convert_to_usd(donation.amount, donation.currency)
            for donation in self.queryset.all()
        )
        donations_count = self.queryset.count()
        average_donation = float(
            total_donation / donations_count if donations_count > 0 else 0
        )

        # Base query for top donors
        def get_top_donors(queryset):
            donors = queryset.values(
                "member__given_name",
                "member__middle_name",
                "member__family_name",
                "currency",
                "amount",
            ).annotate(
                full_name=Concat(
                    "member__given_name",
                    V(" "),
                    "member__middle_name",
                    V(" "),
                    "member__family_name",
                    output_field=models.CharField(),
                ),
            )
            # Convert and aggregate amounts
            donor_totals = {}
            for donor in donors:
                name = donor["full_name"]
                amount_usd = convert_to_usd(donor["amount"], donor["currency"])
                donor_totals[name] = donor_totals.get(name, 0) + amount_usd

            # Sort and get top 5
            sorted_donors = sorted(
                donor_totals.items(), key=lambda x: x[1], reverse=True
            )[:5]
            return [{"name": name, "amount": amount} for name, amount in sorted_donors]

        # Modify time series data to include currency conversion
        def get_time_series_data(queryset):
            data = queryset.values("period", "currency", "amount")
            period_totals = {}

            for item in data:
                period = item["period"]
                amount_usd = convert_to_usd(item["amount"], item["currency"])
                period_totals[period] = period_totals.get(period, 0) + amount_usd

            return [
                {"date": period, "amount": amount}
                for period, amount in sorted(period_totals.items())
            ]

        # Get top donors for different time periods
        monthly_data = get_time_series_data(
            self.queryset.annotate(period=TruncMonth("date"))
        )
        weekly_data = get_time_series_data(
            self.queryset.annotate(period=TruncWeek("date"))
        )
        yearly_data = get_time_series_data(
            self.queryset.annotate(period=TruncYear("date"))
        )

        now = datetime.now()
        response_data = {
            "currency": "USD",  # All amounts are converted to USD
            "total_donation": total_donation,
            "average_donation": average_donation,
            "top_donors": {
                "all_time": get_top_donors(self.queryset),
                "monthly": get_top_donors(
                    self.queryset.filter(date__year=now.year, date__month=now.month)
                ),
                "weekly": get_top_donors(
                    self.queryset.filter(
                        date__gte=now - timedelta(days=now.weekday()),
                        date__lt=now + timedelta(days=1),
                    )
                ),
                "yearly": get_top_donors(self.queryset.filter(date__year=now.year)),
            },
            "time_series": {
                "monthly": monthly_data,
                "weekly": weekly_data,
                "yearly": yearly_data,
            },
        }

        return Response(response_data)
