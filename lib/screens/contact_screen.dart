import 'package:flutter/material.dart';
import 'package:project1/screens/Home/chat_user.dart';

import '../Model/contact_model.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key, required this.contacts});

  final List<ContactModel> contacts;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          Container(
            height: 68,
            width: width,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final allContacts = contacts[index];
                return Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.blue[50],
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
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
                          contacts[index].lastMessageTime,
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
                                  image: AssetImage(
                                      '${contacts[index].profileUrl}')),
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
                                        border: Border.all(
                                            width: 2, color: Colors.white),
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
          ),
        ],
      ),
    );
  }
}
