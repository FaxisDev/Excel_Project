import 'package:excel_project/pages/MyHomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scanxel',
      theme: ThemeData(
        fontFamily: 'InriaSans'
      ),
      home: MyHomePage(),
    );
  }
}

