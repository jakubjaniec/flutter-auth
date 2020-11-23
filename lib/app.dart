import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_auth/ui/views/home.dart';
import 'package:flutter_auth/ui/views/login.dart';
import 'package:flutter_auth/ui/views/register.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        initialRoute: '/login',
        routes: {
          '/': (context) => HomeScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
        });
  }
}
