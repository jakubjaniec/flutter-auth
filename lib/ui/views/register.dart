import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/widgets/buttons.dart';
import 'package:flutter_auth/ui/widgets/input.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
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
                height: MediaQuery.of(context).size.height / 1.45,
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
                    Text('Create an account',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22.0,
                        )),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('Start your carrer with us'),
                    SizedBox(height: 20.0),
                    InputField(
                      text: 'name',
                      icon: Icons.person_outline,
                      controller: nameController,
                    ),
                    SizedBox(height: 15.0),
                    InputField(
                      text: 'email',
                      icon: Icons.mail_outline,
                      controller: emailController,
                    ),
                    SizedBox(height: 15.0),
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
                            text: 'Sign up',
                            nameValue: nameController.text.trim(),
                            emailValue: emailController.text.trim(),
                            passwordValue: passwordController.text.trim(),
                          ),
                          SizedBox(height: 40.0),
                          Expanded(child: RoutingButton(text: 'Login')),
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
