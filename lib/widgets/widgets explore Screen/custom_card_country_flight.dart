import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCardFlight extends StatelessWidget {
  const CustomCardFlight({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage('assets/images/explore/paris.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  const Positioned(
                    left: 16,
                    bottom: 16,
                    child: CustomText(
                      text: 'Paris',
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 16,
                    bottom: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomText(
                          text: 'From',
                          fSize: 18,
                        ),
                        CustomText(
                          text: '\$1299',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}