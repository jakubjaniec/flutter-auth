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
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg-img3.jpg',
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 40.0,
                ),
                height: MediaQuery.of(context).size.height / 1.55,
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
                          fontSize: 22.0,
                        )),
                    SizedBox(height: 15.0),
                    Text('Sign in to continue'),
                    SizedBox(height: 20.0),
                    InputField(
                      text: 'email',
                      icon: Icons.mail_outline,
                      controller: emailController,
                    ),
                    SizedBox(height: 20.0),
                    InputField(
                      text: 'password',
                      icon: Icons.lock_outline,
                      controller: passwordController,
                    ),
                    SizedBox(height: 30.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MainActionButton(
                            text: 'Log in',
                            emailValue: emailController.text.trim(),
                            passwordValue: passwordController.text.trim(),
                          ),
                          SizedBox(height: 15.0),
                          Center(child: Text('Forgot password?')),
                          SizedBox(height: 40.0),
                          Expanded(child: RoutingButton(text: 'Sign up')),
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
