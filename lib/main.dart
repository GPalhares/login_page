import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Flutter',
      theme: ThemeData(
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],
          backgroundColor: Color.fromARGB(500, 252, 170, 38)),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
