import 'package:flutter/material.dart';
import 'package:hellof/screens/guest/Auth.dart';
import 'package:hellof/screens/guest/Password.dart';
import 'package:hellof/screens/guest/Term.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'leader',

      home:TermScreen(),
    );
  }
}

