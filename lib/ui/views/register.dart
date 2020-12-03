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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg-img2.jpg',
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
                height: height / 1.45,
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
                          fontSize: height * 0.03,
                        )),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Start your carrer with us',
                      style: TextStyle(fontSize: height * 0.019),
                    ),
                    SizedBox(
                      height: height * 0.028,
                    ),
                    InputField(
                      text: 'name',
                      icon: Icons.person_outline,
                      controller: nameController,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    InputField(
                      text: 'email',
                      icon: Icons.mail_outline,
                      controller: emailController,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    InputField(
                      text: 'password',
                      icon: Icons.lock_outline,
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
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
                          SizedBox(
                            height: height * 0.052,
                          ),
                          Expanded(
                            child: RoutingButton(text: 'Login'),
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
