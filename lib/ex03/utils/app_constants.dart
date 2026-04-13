import 'package:btc7/ex03/models/setting_entry.dart';
import 'package:flutter/material.dart';

class AppConstants {
  const AppConstants._();

  static const String exerciseTitle = 'Bai 3 - Settings Screen';
  static const String exerciseSubtitle =
      'Home mo Settings bang MaterialPageRoute, khong dung Named Routes.';

  static const List<SettingEntry> options = <SettingEntry>[
    SettingEntry(title: 'Notifications', icon: Icons.notifications_outlined),
    SettingEntry(title: 'Privacy', icon: Icons.lock_outline),
    SettingEntry(title: 'Appearance', icon: Icons.palette_outlined),
  ];
}
