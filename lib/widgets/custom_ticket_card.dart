import 'package:day30/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTicketCard extends StatelessWidget {
  final bool isBooked;
  const CustomTicketCard({Key? key, this.isBooked = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isBooked ? 0 : 5,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'SIN',
                  fColor: Color(0xff1262AE),
                  fSize: 20,
                  fWeight: FontWeight.w700,
                ),
                const CustomText(
                  text: 'Singapore',
                  fColor: Colors.black,
                  fSize: 16,
                  fWeight: FontWeight.w300,
                ),
                if (isBooked)
                  const CustomText(
                    text: 'Terminal 1',
                    fColor: Colors.grey,
                    fWeight: FontWeight.w400,
                    fSize: 12,
                  ),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CustomText(
                  text: 'LAX',
                  fColor: Color(0xff1262AE),
                  fSize: 20,
                  fWeight: FontWeight.w700,
                ),
                const CustomText(
                  text: 'Los Angeles',
                  fColor: Colors.black,
                  fSize: 16,
                  fWeight: FontWeight.w300,
                ),
                if (isBooked)
                  const CustomText(
                    text: 'Terminal 4',
                    fColor: Colors.grey,
                    fWeight: FontWeight.w400,
                    fSize: 12,
                  ),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.white,
                  ),
                ),
                const CustomText(
                  text: '----',
                  fColor: Colors.black,
                ),
                CircleAvatar(
                  radius: 15,
                  child: Transform.rotate(
                    angle: 2 / 1.3,
                    child: const Icon(Icons.flight),
                  ),
                ),
                const CustomText(
                  text: '----',
                  fColor: Colors.black,
                ),
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            leading: CustomText(
              text: 'Departs on: 1 May, 08:00 AM',
              fColor: Colors.black,
              fSize: 18,
              fWeight: FontWeight.w300,
            ),
            trailing: CustomText(
              text: '4 days to go',
              fColor: Colors.black,
              fSize: 19,
            ),
          ),
        ],
      ),
    );
  }
}
