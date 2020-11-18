import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg-img1.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                  top: 40.0,
                  bottom: 40.0,
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
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('Sign in to continue'),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                        ),
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                        // hintText: 'example@gmail.com',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        // alignLabelWithHint: false,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.black,
                        ),
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        // alignLabelWithHint: false,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Expanded(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text('Log in'),
                              color: Colors.yellow[800],
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Center(child: Text('Forgot password?')),
                          SizedBox(height: 40.0),
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.white,
                              child: Text('Sign up'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
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
