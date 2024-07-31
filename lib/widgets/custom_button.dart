import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orange,
          ),
          child: Center(
            child: CustomText(
              text: text,
              fWeight: FontWeight.w400,
              fSize: 20,
              fColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
