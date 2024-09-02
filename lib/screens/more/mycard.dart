import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  const MyCard({
    super.key,
    required this.title,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        elevation: 0,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff0F1828)),
          ),
          leading: Icon(
            leadingIcon,
            color: Color(0xff0F1828),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff0F1828),
          ),
        ),
      ),
    );
  }
}
