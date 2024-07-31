import 'package:day30/utils/profile_list.dart';
import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class MDrawer extends StatelessWidget {
  const MDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileList profileList = ProfileList();
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/images/explore/profile.png'),
                  ),
                  title: CustomText(
                    text: 'Hello',
                    fColor: Colors.grey,
                    fSize: 20,
                    fWeight: FontWeight.w400,
                  ),
                  subtitle: CustomText(
                    text: 'Macy Johnson',
                    fColor: Colors.black,
                    fSize: 20,
                    fWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: profileList.profiles.length,
                itemBuilder: (context, index) {
                  var profile = profileList.profiles[index];
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
                },
              ),
            ),
            const CustomText(
              text: 'App version 1.0.1',
              fColor: Colors.grey,
              fSize: 16,
              fWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
