import 'package:flutter/material.dart';
import 'package:login/pages/forgot_password.dart';
import 'package:rive/rive.dart';
import '../components/button_login_page.dart';
import 'my_home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Center(
                  child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: RiveAnimation.asset('assets/images/tree.riv')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, top: 0, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      labelText: 'Email',
                      hintText: 'Enter valid email'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_open),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100)),
                  child: Button(
                    text: 'Login',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MyHomePage()));
                    },
                    color: Colors.pink.shade600,
                    fontSize: 30,
                  ),
                ),
              ),
              Button(
                text: 'Forgot Password',
                onPressed: () {},
                color: Colors.pink.shade600,
                fontSize: 15,
              ),
              SizedBox(
                height: 100,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: const Text(
                  'New user? Create Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
