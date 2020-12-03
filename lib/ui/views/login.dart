import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/widgets/buttons.dart';
import 'package:flutter_auth/ui/widgets/input.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg-img3.jpg',
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
              height: height,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.084,
                  vertical: height * 0.054,
                ),
                height: height / 1.55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Fashionista!',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: height * 0.03,
                        )),
                    SizedBox(height: height * 0.02),
                    Text(
                      'Sign in to continue',
                      style: TextStyle(fontSize: height * 0.019),
                    ),
                    SizedBox(height: height * 0.027),
                    InputField(
                      text: 'email',
                      icon: Icons.mail_outline,
                      controller: emailController,
                    ),
                    SizedBox(height: height * 0.027),
                    InputField(
                      text: 'password',
                      icon: Icons.lock_outline,
                      controller: passwordController,
                    ),
                    SizedBox(height: height * 0.04),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MainActionButton(
                            text: 'Log in',
                            emailValue: emailController.text.trim(),
                            passwordValue: passwordController.text.trim(),
                          ),
                          SizedBox(height: height * 0.02),
                          Center(
                              child: Text(
                            'Forgot password?',
                            style: TextStyle(fontSize: height * 0.0187),
                          )),
                          SizedBox(height: height * 0.055),
                          Expanded(
                            child: RoutingButton(text: 'Sign up'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
