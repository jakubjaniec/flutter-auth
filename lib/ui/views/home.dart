import 'package:flutter/material.dart';
import 'package:flutter_auth/services/auth.dart';
import 'package:flutter_auth/services/database.dart';
import 'package:flutter_auth/ui/widgets/buttons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: context.watch<AuthService>().user,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) return CircularProgressIndicator();
          var uid = snapshot.data.uid;

          return StreamBuilder(
              stream: context.watch<FirestoreService>().users(uid),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('uid: ${snapshot.data.data()['uid']}'),
                      Text('name: ${snapshot.data.data()['name']}'),
                      SignOutButton(),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
