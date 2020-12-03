import 'package:flutter/material.dart';
import 'package:flutter_auth/services/auth.dart';
import 'package:flutter_auth/ui/views/home.dart';
import 'package:flutter_auth/ui/views/login.dart';
import 'package:flutter_auth/ui/views/register.dart';
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
                  await Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }
              }
              break;
            case 'Sign up':
              {
                var result = await context.read<AuthService>().signUp(
                    email: emailValue,
                    password: passwordValue,
                    name: nameValue);
                if (result) {
                  await Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                }
              }
              break;
          }
        },
        child: Text('$text',
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02)),
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
  final Color textColor;
  final Color bgColor;
  final String pageType;
  final double fontSize;

  RoutingButton({
    this.text,
    this.textColor = Colors.black,
    this.bgColor = Colors.white,
    this.pageType,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return RaisedButton(
      onPressed: () {
        if (text == 'Login') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        } else if (text == 'Sign up') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegisterScreen(),
            ),
          );
        }
      },
      color: bgColor,
      child: Text('$text',
          style: TextStyle(
            color: textColor,
            fontSize: height * 0.02,
          )),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
          color: pageType != 'start' ? Colors.grey[400] : Colors.transparent,
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
          await Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
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
