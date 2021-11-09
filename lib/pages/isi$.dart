import 'package:flutter/material.dart';

class Isine extends StatelessWidget {
  final int index;

  Isine(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Isine Lho Iki'),
      ),
      body: Center(
        child: Text('List isine #$index', style: TextStyle(fontSize: 32.0 ),) ,),
    );
  }

  
}
