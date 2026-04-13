class TripSummary {
  const TripSummary({
    required this.pickup,
    required this.destination,
    required this.priceEstimate,
    required this.driverName,
  });

  final String pickup;
  final String destination;
  final String priceEstimate;
  final String driverName;
}
