import 'package:flutter/material.dart';
import 'package:project1/Widgets/my_textform_field.dart';
import 'package:project1/screens/ChatScreen/Widgets/my_chats.dart';
import 'package:project1/screens/ChatScreen/Widgets/stories.dart';
import '../../Model/contact_model.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.contacts});
  final List<ContactModel> contacts;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    List<String> _images = [
      'asssets/haider.png',
      'asssets/kami.png',
      'asssets/khalid.png',
      'asssets/nasir.png',
      'asssets/yasir.png',
      'asssets/nabeel.png',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chats',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff0F1828)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_comment,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyStories(width: width, contacts: contacts),
            SizedBox(
              height: 20,
            ),
            MyTextFormField(hintText: 'Search for People'),
            MyChat(contacts: contacts),
          ],
        ),
      ),
    );
  }
}
