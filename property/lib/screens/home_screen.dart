import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('home screen')),
        body: Center(
            child: Text('home screen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))));
  }
}
