import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/verification_light2.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final TextEditingController phoneNumberController = TextEditingController();
  final countryCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Enter Your Phone Number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0F1828)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Please confirm your country code and enter\nyour number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF0F1828),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CountryCodePicker(
                          initialSelection: 'PK',
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                        Text(
                          '|',
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 170,
                          child: TextField(
                            controller: phoneNumberController,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Phone'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 52,
                    width: 327,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF002DE3)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpScreen(
                                  phoneNumber: phoneNumberController.text,
                                ),
                              ));
                        },
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
