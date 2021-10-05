import 'package:flutter/material.dart';

import 'drawer_home_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    darkMode ? darkMode = false : darkMode = true;
                  });
                },
                icon: Icon(
                  Icons.bedtime_rounded,
                  color: darkMode ? Colors.grey[300] : Colors.grey[850],
                ),
              ),
            ],
          ),
          drawer: DrawerHomePage(),
          backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}
