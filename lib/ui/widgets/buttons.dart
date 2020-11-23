import 'package:flutter/material.dart';

class MainActionButton extends StatelessWidget {
  final String text;

  MainActionButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {},
        child: Text('$text'),
        color: Colors.yellow[800],
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class RoutingButton extends StatelessWidget {
  final String text;

  RoutingButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {
          if (text == 'Login') {
            Navigator.pushNamed(context, '/login');
          } else if (text == 'Sign up') {
            Navigator.pushNamed(context, '/register');
          }
        },
        color: Colors.white,
        child: Text('$text'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
