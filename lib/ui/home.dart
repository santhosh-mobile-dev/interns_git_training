import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String username;

  Home({this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello $username'),
      ),
    );
  }
}
