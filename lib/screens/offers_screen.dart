import 'package:day30/utils/offer_list.dart';
import 'package:day30/widgets/custom_app_bar.dart';
import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OfferList offerList = OfferList();
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Offers',
      ),
      body: ListView.builder(
        itemCount: offerList.offers.length,
        itemBuilder: (context, index) {
          final offer = offerList.offers[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 140,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xff32D4AD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: CustomText(
                          text: 'Limited offer!',
                          fColor: Colors.white,
                          fWeight: FontWeight.w400,
                          fSize: 20,
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outlined,
                        color: index == 0 ? Colors.blue : Colors.grey.shade400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomText(
                    text: offer.title2,
                    fColor: Colors.black,
                    fSize: 20,
                    fWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          offer.image,
                          width: 100,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: offer.plugin,
                                fColor: Colors.grey,
                                fWeight: FontWeight.w400,
                                fSize: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
