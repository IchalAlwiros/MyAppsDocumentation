import 'package:flutter/material.dart';

class Mediaquery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latian Media Query"),centerTitle: true,

          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xffffd700),Color(0xffffa500)])
            ),
          ),
        ),
        body:(MediaQuery.of(context).orientation == Orientation.portrait) ? Column (
          children: generateContainer,
        ) : Row (
          children: generateContainer,)
      );
  }

  List<Widget> get generateContainer {
    return <Widget> [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ];
  }
}
