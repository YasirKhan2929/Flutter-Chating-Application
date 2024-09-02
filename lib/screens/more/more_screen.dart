import 'package:flutter/material.dart';

import 'mycard.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.1,
              width: width,
              child: Card(
                elevation: 0,
                child: ListTile(
                  title: Text(
                    'Yasir',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff0F1828)),
                  ),
                  subtitle: Text(
                    '0314 yasirkhan',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  leading: Icon(
                    Icons.person_rounded,
                    color: Color(0xff0F1828),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff0F1828),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            MyCard(
              title: 'Account',
              leadingIcon: Icons.person_rounded,
            ),
            MyCard(
              title: 'Chats',
              leadingIcon: Icons.message_rounded,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            MyCard(
              title: 'Appearance',
              leadingIcon: Icons.sunny,
            ),
            MyCard(
              title: 'Notifications',
              leadingIcon: Icons.add_alert,
            ),
            MyCard(
              title: 'Privacy',
              leadingIcon: Icons.security,
            ),
            MyCard(
              title: 'Data Usage',
              leadingIcon: Icons.file_present,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            MyCard(
              title: 'Help',
              leadingIcon: Icons.question_mark,
            ),
            MyCard(
              title: 'Invite Friends',
              leadingIcon: Icons.share,
            ),
          ],
        ),
      ),
    );
  }
}
