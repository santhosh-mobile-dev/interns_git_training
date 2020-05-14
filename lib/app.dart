import 'package:flutter/material.dart';
import 'package:internsgittraining/ui/home.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git Training',
      theme: ThemeData(
       // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}