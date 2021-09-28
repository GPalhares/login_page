import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Recovery Password \n Enter your Email"),
      content: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            labelText: 'Your Email',
            hintText: 'Enter valid email'),
      ),
    );
  }
}
