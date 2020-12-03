import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextEditingController controller;

  InputField({this.text, this.icon, this.controller});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return TextField(
      controller: controller,
      obscureText: text == 'password' ?? true,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.black,
          // size: 24,
          size: height * 0.033,
        ),
        labelText: '${text.toUpperCase()}',
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          // fontSize: 16,
          fontSize: height * 0.021,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // alignLabelWithHint: false,
      ),
    );
  }
}
