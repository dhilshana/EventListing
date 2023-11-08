import 'package:flutter/material.dart';
import 'package:eventlinsting/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 226, 224, 224)),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
