import 'package:assignment07/Calculator.dart';
import 'package:assignment07/SplashScreen.dart';
import 'package:assignment07/ToDoApp.dart';
import 'package:assignment07/gird_view.dart';
import 'package:assignment07/list_view.dart';
import 'package:flutter/material.dart';
import 'Calculator.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:assignment07/ToDoApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: SplashScreen()),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
