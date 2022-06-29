import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register__page.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      initialRoute: '/login',
      routes: {
        MyRoutes.loginScreen: (context) => LoginPage(),
        MyRoutes.register: (context) => RegisterPage(),
      },
    );
  }
}

