import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
// import 'package:flutter_auth/models/user.dart';
import 'package:flutter_auth/services/auth.dart';
import 'package:flutter_auth/services/database.dart';
import 'package:flutter_auth/ui/views/home.dart';
import 'package:flutter_auth/ui/views/login.dart';
import 'package:flutter_auth/ui/views/register.dart';
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
          create: (context) => context.read<AuthService>().authStateChanges,
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().user,
        )
      ],
      child: MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          initialRoute: '/login',
          routes: {
            '/': (context) => HomeScreen(),
            '/login': (context) => LoginScreen(),
            '/register': (context) => RegisterScreen(),
          }),
    );
  }
}
