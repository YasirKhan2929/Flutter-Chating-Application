import 'package:flutter/material.dart';
import 'package:flutterotpfield/flutterotpfield.dart';
import 'package:project1/screens/profile_account.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  const OtpScreen({super.key, required this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 169),
                child: Text(
                  'Enter Code',
                  style: TextStyle(
                    color: Color(0xFF0F1828),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                'We have sent you as SMS with the code\nto ${widget.phoneNumber}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF0F1828)),
              ),
              SizedBox(height: height * 0.05),
              FlutterOtpField(
                inputFieldLength: 4,
                onValueChange: (value) {},
                onCompleted: (value) {},
                spaceBetweenFields: 22,
              ),
              SizedBox(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  'Resend Code',
                  style: TextStyle(
                    color: Color(0xFF002DE3),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
