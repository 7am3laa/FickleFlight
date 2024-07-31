import 'package:day30/utils/destinations_list.dart';
import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomDestionationCard extends StatelessWidget {
  const CustomDestionationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DestinationList destination = DestinationList();
    return SizedBox(
      height: 290,
      child: ListView.builder(
        itemCount: destination.destinations.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final dest = destination.destinations[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    dest.image,
                    width: 250,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: CustomText(
                      fSize: 18,
                      fColor: Colors.black,
                      text: dest.title,
                    ),
                    subtitle: CustomText(
                      fSize: 18,
                      fColor: Colors.black,
                      fWeight: FontWeight.w300,
                      text: dest.subtitle,
                    ),
                    trailing: CustomText(
                      fSize: 18,
                      fColor: Colors.black,
                      fWeight: FontWeight.w300,
                      text: dest.code,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
