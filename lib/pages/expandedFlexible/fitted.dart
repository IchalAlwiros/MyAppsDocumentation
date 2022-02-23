import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';
class FittedKu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
        child: Container(
          color: Colors.orange,
          width: 200,
          height: 150,
          child: FittedBox(
            child: Text(
              'Gasasaadsdadsaduuuuuuuuuuuuuuuuuuuuuuuuuuuua',
              style: styleText2,
            ),
          ),
        ),
      ),
      ),
    );
  }
}