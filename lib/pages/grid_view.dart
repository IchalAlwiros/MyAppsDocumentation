import 'dart:math';

import 'package:flutter/material.dart';

class GriDView extends StatelessWidget {
  final List<Container> myList = List.generate(
      90,
      (index) => Container(
            // height: 50,
            // width: 150,
            color: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
          ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffffd700), Color(0xffffa500)])),
          ),
        ),
        // body: GridView(
        //   padding: EdgeInsets.all(10),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 3 / 3,
        //   ),
        //   children: myList,
        // ),

        //Cara Cepat
        body: GridView.count(
          childAspectRatio: 3 / 3,
          padding: EdgeInsets.all(10),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: myList,
          ),
      ),
    );
  }
}
