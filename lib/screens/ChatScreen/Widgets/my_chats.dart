import 'package:flutter/material.dart';
import 'package:project1/screens/PersonaChat/personal_Chat_try.dart';
import 'package:project1/screens/PersonaChat/personal_chat.dart';

import '../../../Model/contact_model.dart';

class MyChat extends StatelessWidget {
  const MyChat({
    super.key,
    required this.contacts,
  });

  final List<ContactModel> contacts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final allContacts = contacts[index];
          return Card(
            margin: EdgeInsets.all(10.0),
            color: Colors.blue[50],
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonalChatTry(
                              contacts: contacts,
                              name: contacts[index].name,
                              profileUrl: contacts[index].profileUrl,
                            )));
              },
              child: ListTile(
                trailing: Column(
                  children: [
                    Text(
                      contacts[index].lastSeen,
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const Spacer(),
                    contacts[index].noOfMessages != null
                        ? CircleAvatar(
                            backgroundColor: Color(0xffD2D5F9),
                            radius: 10.0,
                            child: Text(
                              '${contacts[index].noOfMessages}',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    contacts[index].name,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0F1828)),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    contacts[index].lastMessage,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xffADB5BD)),
                  ),
                ),
                leading: Stack(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.1),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('${contacts[index].profileUrl}')),
                      ),
                    ),
                    contacts[index].lastMessageTime == 'Online Now'
                        ? Positioned(
                            right: 5,
                            bottom: 0,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  color: Color(0xff2CC069)),
                            ))
                        : SizedBox(),
                  ],
                ),
                //trailing: Text('4:10'),
              ),
            ),
          );
        },
      ),
    );
  }
}
