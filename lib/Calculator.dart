import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:ffi';
import 'dart:io';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";
  Widget button(var text) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result = result + text;
          });
        },
        child: Text(text));
  }

  clear() {
    setState(() {
      result = "";
    });
  }

  Output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Calculator"))),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            result,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button("1"),
              button("2"),
              button("3"),
              button("/"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button("4"),
              button("5"),
              button("6"),
              button("*"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button("7"),
              button("8"),
              button("9"),
              button("-"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button("0"),
              ElevatedButton(onPressed: clear, child: const Text("Clear")),
              ElevatedButton(onPressed: Output, child: const Text("=")),
              button("+"),
            ],
          ),
        ]),
      ),
    );
  }
}
