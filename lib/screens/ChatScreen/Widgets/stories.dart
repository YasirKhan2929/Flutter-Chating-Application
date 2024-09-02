import 'package:flutter/material.dart';

import '../../../Model/contact_model.dart';

class MyStories extends StatelessWidget {
  const MyStories({
    super.key,
    required this.width,
    required this.contacts,
  });

  final double width;
  final List<ContactModel> contacts;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: width,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Stack(
                    children: [
                      contacts[index].name != 'Yasir'
                          ? CircleAvatar(
                              radius: 34,
                              backgroundColor: Color(0xff2CC069),
                              child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      '${contacts[index].profileUrl}')),
                            )
                          : CircleAvatar(
                              radius: 34,
                              backgroundImage:
                                  AssetImage('${contacts[index].profileUrl}')),
                      contacts[index].name == 'Yasir'
                          ? Positioned(
                              right: 0,
                              bottom: 0,
                              child: Icon(Icons.add_circle_rounded))
                          : SizedBox(),
                    ],
                  )),
              Text(contacts[index].name),
            ],
          );
        },
      ),
    );
  }
}
