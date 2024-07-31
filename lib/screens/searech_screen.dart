import 'package:day30/widgets/custom_app_bar.dart';
import 'package:day30/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Search',
        isActions: true,
      ),
      body: Center(
        child: CustomButton(
          text: 'Search',
        ),
      ),
    );
  }
}
