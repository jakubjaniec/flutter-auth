import 'package:flutter/material.dart';
import 'package:flutter_auth/services/auth.dart';
import 'package:provider/provider.dart';

class MainActionButton extends StatelessWidget {
  final String text;
  final String nameValue;
  final String emailValue;
  final String passwordValue;

  MainActionButton({
    this.text,
    this.nameValue,
    this.emailValue,
    this.passwordValue,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        onPressed: () async {
          switch (text) {
            case 'Log in':
              {
                var result = await context
                    .read<AuthService>()
                    .signIn(email: emailValue, password: passwordValue);
                if (result) {
                  await Navigator.pushReplacementNamed(context, '/');
                }
              }
              break;
            case 'Sign up':
              {
                var result = await context
                    .read<AuthService>()
                    .signUp(email: emailValue, password: passwordValue);
                if (result) {
                  await Navigator.pushReplacementNamed(context, '/login');
                }
              }
              break;
          }
        },
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

class SignOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () async {
        var result = await context.read<AuthService>().signOut();
        if (result) {
          await Navigator.pushReplacementNamed(context, '/login');
        }
      },
      child: Text('Sign out'),
      color: Colors.yellow[800],
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
