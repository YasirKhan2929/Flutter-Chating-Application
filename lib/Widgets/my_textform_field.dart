import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  const MyTextFormField({
    super.key,
    required this.hintText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon ?? Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0))),
    );
  }
}
