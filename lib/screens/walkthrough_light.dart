import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/screens/verification_light.dart';

class WalkthroughLightScreen extends StatelessWidget {
  const WalkthroughLightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Container(
                height: 271,
                width: 262,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asssets/walkthroughImage1.png'),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 150,
              width: 280,
              child: Text(
                'Connect easily with your family and friends over countries',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF0F1828),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    height: 1.2,
                    letterSpacing: 1.5),
              ),
            ),
          )),
          Center(
            child: Text(
              'Terms & Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF0F1828),
                height: 0.6,
              ),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 40,
              width: 262,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blue[500]),
                child: Text(
                  'Start Messaging',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFF7F7FC),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneNumberScreen(),
                      ));
                },
              ),
            ),
          )),
        ],
      ),
    );
  }
}
