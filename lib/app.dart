import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_auth/services/auth.dart';
import 'package:flutter_auth/services/database.dart';
import 'package:flutter_auth/ui/views/start.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        Provider<FirestoreService>(
          create: (_) => FirestoreService(),
        ),
        StreamProvider(
          initialData: '',
          create: (context) => context.read<AuthService>().authStateChanges,
        ),
        StreamProvider(
          initialData: '',
          create: (context) => context.read<AuthService>().user,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: StartScreen(),
      ),
    );
  }
}
