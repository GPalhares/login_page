import 'package:flutter/material.dart';
import 'package:login/components/button_login_page.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: Button(
                  text: 'Welcome',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginPage()));
                  },
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
