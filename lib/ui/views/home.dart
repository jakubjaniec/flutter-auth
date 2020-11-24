import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/widgets/buttons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello, world!'),
            SignOutButton(),
          ],
        ),
      ),
    );
  }
}
