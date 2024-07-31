import 'package:day30/models/offer.dart';

class OfferList {
  List<Offer> offers = [
    Offer(
      image: 'assets/images/explore/v1.png',
      title: '20% discount for \nmastercard users',
      description: 'Limited time offer!',
      plugin:
          'Use your mastercard with any transaction and get 20% discount instantly!',
      title2: '25% discount with your VISA credit or debit cards',
    ),
    Offer(
      image: 'assets/images/explore/v2.png',
      title: '10% discount for \nvisa users',
      description: 'Limited time offer!',
      plugin:
          'Use your VISA credit or debit card with any transaction and get 25% discount instantly!',
      title2: 'Get 20% discount with your Master credit cards',
    ),
  ];
}
