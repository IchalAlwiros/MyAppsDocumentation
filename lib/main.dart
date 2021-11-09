import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/login_page.dart';
void main() => runApp(MyLearn());

class MyLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:loginPage(),
    );
  }
}