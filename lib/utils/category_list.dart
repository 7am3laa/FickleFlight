import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryList {
  List<Category> categories = [
    Category(
      color: const Color(0xff5443CB),
      icon: Icons.flight,
      title: 'Flight',
    ),
    Category(
      color: const Color(0xffF9668D),
      icon: Icons.hotel,
      title: 'Hotels',
    ),
    Category(
      color: const Color(0xffFF9B53),
      icon: Icons.bookmark,
      title: 'Attractions',
    ),
    Category(
      color: const Color(0xff36DA76),
      icon: Icons.restaurant,
      title: 'Eats',
    ),
    Category(
      color: const Color(0xffFDBF00),
      icon: Icons.commute,
      title: 'Commute',
    ),
  ];
}
