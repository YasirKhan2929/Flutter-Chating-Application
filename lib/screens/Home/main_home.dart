import 'package:flutter/material.dart';
import 'package:project1/Model/contact_model.dart';
import 'package:project1/screens/ChatScreen/chat_screen.dart';
import 'package:project1/screens/contact_screen.dart';
import 'package:project1/screens/more/more_screen.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _currentIndex = 0;

  void onTappedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTappedIndex,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone_sharp),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return ContactScreen(
          contacts: contacts,
        );
      case 1:
        return ChatScreen(
          contacts: contacts,
        );
      case 2:
        return const MoreScreen();
      default:
        return ChatScreen(
          contacts: contacts,
        );
    }
  }
}
