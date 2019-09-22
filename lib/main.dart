

import 'package:automob/Setup/sign_in.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Colors.white,


//        primarySwatch: Colors.blue,

      ),
      home: LoginPage(),
    );
  }
}