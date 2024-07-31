import 'package:day30/screens/drawer_screen.dart';
import 'package:day30/widgets/widgets%20explore%20Screen/custom_card_country_flight.dart';
import 'package:day30/widgets/widgets%20explore%20Screen/custom_category_card.dart';
import 'package:day30/widgets/widgets%20explore%20Screen/custom_destination_card.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_offer_card.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_ticket_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/explore/logo.png',
          width: 150,
          height: 30,
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/explore/profile.png'),
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: const MDrawer(),
      body: ListView(
        children: const [
          CustomCardFlight(),
          ListTile(
            leading: CustomText(
              text: 'Upcoming Flight',
              fSize: 16,
              fWeight: FontWeight.w700,
              fColor: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          CustomTicketCard(),
          SizedBox(height: 15),
          CustomCategoryCard(),
          ListTile(
            leading: CustomText(
              text: 'Trending Destinations',
              fSize: 16,
              fWeight: FontWeight.w700,
              fColor: Colors.black,
            ),
            trailing: CustomText(
              text: 'See all',
              fSize: 16,
              fColor: Colors.blue,
              fWeight: FontWeight.w700,
            ),
          ),
          CustomDestionationCard(),
          ListTile(
            leading: CustomText(
              text: 'Offers',
              fSize: 16,
              fColor: Colors.black,
              fWeight: FontWeight.w700,
            ),
          ),
          CustomOfferCard(),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
