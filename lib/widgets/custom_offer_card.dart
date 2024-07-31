import 'package:day30/utils/offer_list.dart';
import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomOfferCard extends StatelessWidget {
  const CustomOfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OfferList offerList = OfferList();
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: offerList.offers.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final offer = offerList.offers[index];
          return Card(
            shadowColor: Colors.black,
            elevation: 10,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    offer.image,
                    width: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: offer.title,
                        fColor: Colors.black,
                        fWeight: FontWeight.w500,
                        fSize: 18,
                      ),
                      const SizedBox(height: 5),
                      CustomText(
                        text: offer.description,
                        fColor: Colors.grey,
                        fSize: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
