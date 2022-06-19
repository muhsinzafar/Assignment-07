// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:assignment07/gird_view.dart';

// class GirdView extends StatefulWidget {
//   const GirdView({Key? key}) : super(key: key);

//   @override
//   State<GirdView> createState() => _GirdViewState();

//   static count(
//       {required NeverScrollableScrollPhysics physics,
//       required bool ShrinkWrap,
//       required int CrossAxisAlignment,
//       required int CrossAxisSpacing,
//       required int MainAxisAlignment,
//       required List<Container> children}) {}
// }

// class _GirdViewState extends State<GirdView> {
//   List<dynamic> list = [1, 2, 3, 4, 5, 6, 7, 8];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//           child: Column(children: [
//         Container(
//           height: 200,
//           width: 200,
//           color: Colors.amber,
//           margin: EdgeInsets.only(top: 10),
//         ),
//         Container(
//           height: 200,
//           width: 200,
//           color: Colors.red,
//           margin: EdgeInsets.only(top: 10),
//         ),
//         Container(
//           height: 200,
//           width: 200,
//           color: Colors.black,
//           margin: EdgeInsets.only(top: 10),
//         ),
//         Container(
//           height: 200,
//           width: 200,
//           color: Colors.yellow,
//           margin: EdgeInsets.only(top: 10),
//         ),
//         Container(
//           height: 200,
//           width: 200,
//           color: Colors.purple,
//           margin: EdgeInsets.only(top: 10),
//         ),
//         Container(
//           height: 200,
//           width: 200,
//           color: Colors.green,
//           margin: EdgeInsets.only(top: 10),
//         ),
//         GirdView.count(
//             physics: NeverScrollableScrollPhysics(),
//             ShrinkWrap: true,
//             CrossAxisAlignment: 2,
//             CrossAxisSpacing: 20,
//             MainAxisAlignment: 20,
//             children: List.generate(list, (index) {
//               return Container(
//                   color: Colors.green,
//                   child: Center(child: Text("${list[index]}")));
//             }))
//       ])),
//     );
//   }
// }
