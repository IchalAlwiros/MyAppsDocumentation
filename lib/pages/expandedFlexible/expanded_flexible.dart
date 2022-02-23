import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';

class MyExpendedFlexible extends StatefulWidget {
  @override
  _MyExpendedFlexibleState createState() => _MyExpendedFlexibleState();
}

class _MyExpendedFlexibleState extends State<MyExpendedFlexible> {
  @override
  //final bool subBab = true;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyExpandedPage()
      // home: Fittedku(),
    );
  }
}

class MyExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.orange,
                //height: 100,
                //width: 50,
                //child: Text('11111111111'),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.black,
                //height: 100,
                //width: 50,
                //child: Text('2222222222222'),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight, //akan mengisi space yang tersedia
              child: Container(
                color: Colors.amber,
                //height: 100,
                //width: 50,
                //child: Text('333333333'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class Fittedku extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.orange,
//           width: 200,
//           child: Center(
//             child: Text(
//               'Gasasaadsdadsada',
//               style: styleText2,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
