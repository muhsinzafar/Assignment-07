import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:assignment07/list_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 200,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 200,
              color: Colors.red,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 200,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 200,
              color: Colors.green,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 200,
              color: Colors.orange,
            ),
          ],
        )
      ]),
    ));
  }
}
