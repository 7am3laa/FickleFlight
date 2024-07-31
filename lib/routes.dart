import 'package:day30/screens/booking_screen.dart';
import 'package:day30/screens/explore_screen.dart';
import 'package:day30/screens/home_screen.dart';
import 'package:day30/screens/offers_screen.dart';
import 'package:day30/screens/profile_screen.dart';
import 'package:day30/screens/searech_screen.dart';
import 'package:day30/screens/splash_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => const SplashScreen(),
  '/home': (context) => const HomeScreen(),
  '/booking': (context) => const BookingScreen(),
  '/explore': (context) => const ExploreScreen(),
  '/search': (context) => const SearchScreen(),
  '/offers': (context) => const OffersScreen(),
  '/profile': (context) => const ProfileScreen(),
};
