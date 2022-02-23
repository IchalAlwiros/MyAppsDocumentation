import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutBuilderku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomelayoutBuilder(),
    );
  }
}

class HomelayoutBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    // final myAppbar = AppBar(
    //   title: Text('data'),
    // );

    final heightBody = heightApp - paddingTop; //- myAppbar.preferredSize.height;

    return Scaffold(
      //appBar: myAppbar,
      body: Container(
        width: widthApp,
        height: heightBody * 0.9,
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Containerku(widthApp),
            Containerku(widthApp),
            Containerku(widthApp),
          ],
        ),
      ),
    );
  }
}

class Containerku extends StatelessWidget {
  final double widthApp;

  Containerku(this.widthApp);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.25,
          height: constraints.maxHeight * 0.6, //untuk mengambil setengahnya dari parent ukuranya
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
                spreadRadius: 4.0
              ), 
            ]
          ),
        );
      },
    );
  }
}

// Widget homelayoutBuilder() {
//   return Scaffold(
//     body: Container(
//       width:width ,
//     ),
//   );
// }
