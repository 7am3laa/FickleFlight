// ignore_for_file: avoid_print

import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_ticket_card.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Booking',
        isActions: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 25),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CustomText(
              text: 'Upcoming Bookings',
              fSize: 24,
              fWeight: FontWeight.bold,
              fColor: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/explore/booking1.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                const CustomTicketCard(isBooked: true),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(
                    text: 'Show more details...',
                    fWeight: FontWeight.w700,
                    fSize: 20,
                    fColor: Colors.blue,
                  ),
                ),
                const CustomButton(
                  text: 'Edit Booking',
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
