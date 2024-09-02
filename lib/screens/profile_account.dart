import 'package:flutter/material.dart';
import 'package:project1/screens/Home/main_home.dart';
import 'package:project1/screens/contact_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Your Profile'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_2_outlined,
                          size: 80,
                        ),
                      ),
                      Positioned(
                        right: 40.0,
                        left: 75.0,
                        bottom: 30.0,
                        top: 70.0,
                        //bottom: 60.0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle_outlined,
                            size: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: SizedBox(
                      height: 36,
                      width: 327,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "First Name(Required)"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: SizedBox(
                      height: 36,
                      width: 327,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Last Name(Optional)"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 68,
                  ),
                  SizedBox(
                    height: 52,
                    width: 327,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff002DE3)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainHome(),
                            ));
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
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
