import 'package:flutter/material.dart';
import 'Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF090C22),
      ),
      home: HomePage(),
    );
  }
}


