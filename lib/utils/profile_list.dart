import 'package:day30/models/profile.dart';
import 'package:flutter/material.dart';

class ProfileList {
  List<Profile> profiles = [
    Profile(title: 'Payment Details', icon: Icons.payment_outlined),
    Profile(title: 'Covid Advisory', icon: Icons.sick_outlined),
    Profile(title: 'Referal Code', icon: Icons.qr_code_scanner_outlined),
    Profile(title: 'Settings', icon: Icons.settings_outlined),
    Profile(title: 'Logout', icon: Icons.logout_outlined),
  ];
}
