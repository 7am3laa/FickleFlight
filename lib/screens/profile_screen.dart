import 'package:day30/utils/profile_list.dart';
import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileList profileList = ProfileList();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/explore/i2.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: -40,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/explore/profile.png'),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.edit, color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'Cristina Smith',
                      fSize: 24,
                      fWeight: FontWeight.w600,
                      fColor: Colors.black,
                    ),
                    const SizedBox(height: 5),
                    CustomText(
                      text: 'Baguio, Philippines',
                      fSize: 14,
                      fWeight: FontWeight.w400,
                      fColor: Colors.grey.shade700,
                    ),
                    const SizedBox(height: 15),
                    const CustomText(
                      text:
                          'I like the beach, mountains, forest and everything about nature!',
                      fSize: 14,
                      fWeight: FontWeight.w400,
                      fColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            ...profileList.profiles.map((profile) {
              return ListTile(
                leading: Container(
                  width: 25,
                  height: 25,
                  color: const Color(0xffEAF5FF),
                  child: Icon(
                    profile.icon,
                    color: Colors.blue,
                  ),
                ),
                title: CustomText(
                  text: profile.title,
                  fColor: Colors.black,
                  fSize: 18,
                  fWeight: FontWeight.w500,
                ),
                onTap: () {},
              );
            }).toList(),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: const Color(0xffEAF5FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.help_outline,
                    color: Colors.blue.shade700,
                  ),
                  const SizedBox(width: 10),
                  const CustomText(
                    text: 'Have questions? We are here to help',
                    fColor: Color(0xff1262AE),
                    fSize: 14,
                    fWeight: FontWeight.w400,
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
