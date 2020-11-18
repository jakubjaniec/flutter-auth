import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/views/home.dart';
import 'package:device_preview/device_preview.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: HomeScreen(),
    );
  }
}
