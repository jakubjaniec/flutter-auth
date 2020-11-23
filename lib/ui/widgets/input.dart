import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String text;
  final IconData icon;

  InputField({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
