import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextEditingController controller;

  InputField({this.text, this.icon, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: text == 'password' ?? true,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),
        labelText: '${text.toUpperCase()}',
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // alignLabelWithHint: false,
      ),
    );
  }
}
