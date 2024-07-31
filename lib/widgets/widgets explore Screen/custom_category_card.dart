import 'package:flutter/material.dart';

import '../../utils/category_list.dart';
import '../custom_text.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryList category = CategoryList();
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: category.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final cat = category.categories[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 70,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cat.color,
                  ),
                  child: Icon(
                    cat.icon,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: cat.title,
                  fColor: Colors.black,
                  fSize: 20,
                  fWeight: FontWeight.w300,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
