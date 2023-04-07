import 'package:flutter/material.dart';
import 'package:login_with_signup/navigator_key.dart';

import 'Screens/LoginForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login with Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: NavigatorKey.navigatorKey,
      home: LoginForm(),
    );
  }
}
