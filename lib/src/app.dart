import 'package:flutter/material.dart';
import 'package:flutter_counter_app/src/screens/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      home: Home(),
    );
  }
}
