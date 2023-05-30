//import 'package:contador/pages/home_page.dart';
//import 'package:contador/pages/home_page.dart';
import 'package:contador/pages/login_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: LoginPage(),
      
    );
  }
}