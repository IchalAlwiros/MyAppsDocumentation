import 'package:flutter/material.dart';

class SpacerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spacer Widget"),centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffffd700), Color(0xffffa500)]
              )
            ),
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.orange,),
              Spacer(flex: 2,),
              Container(width: 80, height: 80, color: Colors.blue,),
              Spacer(flex: 3,),
              Container(width: 80, height: 80, color: Colors.amber,),
              Spacer(flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}