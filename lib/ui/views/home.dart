import 'package:flutter/material.dart';
// import 'package:flutter_auth/models/user.dart';
import 'package:flutter_auth/services/auth.dart';
import 'package:flutter_auth/ui/widgets/buttons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = context.watch<AuthService>().user;

    return Scaffold(
      body: StreamBuilder(
        stream: user,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();
          return Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${snapshot.data.uid}'),
                SignOutButton(),
              ],
            ),
          );
        },
      ),
    );
  }
}
