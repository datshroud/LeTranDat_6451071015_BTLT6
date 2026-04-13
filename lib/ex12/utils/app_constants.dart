import 'package:btc7/ex12/models/trip_step.dart';
import 'package:btc7/ex12/models/trip_summary.dart';
import 'package:flutter/material.dart';

class AppConstants {
  const AppConstants._();

  static const List<TripStep> steps = <TripStep>[
    TripStep(
      title: 'Chon diem don',
      description: 'Diem don mac dinh: 12 Nguyen Trai, Quan 1.',
      actionLabel: 'Next',
      icon: Icons.my_location,
    ),
    TripStep(
      title: 'Chon diem den',
      description: 'Diem den mac dinh: 99 Le Loi, Quan 1.',
      actionLabel: 'Next',
      icon: Icons.location_on_outlined,
    ),
    TripStep(
      title: 'Xac nhan chuyen di',
      description: 'Xe 4 cho, den sau 3 phut. Gia du kien 85.000 VND.',
      actionLabel: 'Confirm',
      icon: Icons.local_taxi_outlined,
    ),
  ];

  static const TripSummary sampleSummary = TripSummary(
    pickup: '12 Nguyen Trai, Quan 1',
    destination: '99 Le Loi, Quan 1',
    priceEstimate: '85.000 VND',
    driverName: 'Nguyen Van A',
  );

  static const List<String> recentTrips = <String>[
    'Ben Thanh -> Tan Son Nhat',
    'Su Van Hanh -> Landmark 81',
    'Pham Ngu Lao -> Thu Duc',
  ];
}
