import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  final List<Widget> myList =
      List.generate(100, (index) => Text(
        // index.toString(),
        "${index + 1}",
        style: TextStyle(fontSize: 20 + double.parse(index.toString())),
        ));
  // List<Widget> myList = [
  //         Container(
  //           height: 300,
  //           width: 300,
  //           color: Colors.red,
  //         ),
  //         Container(
  //           height: 300,
  //           width: 300,
  //           color: Colors.green,
  //         ),
  //         Container(
  //           height: 300,
  //           width: 300,
  //           color: Colors.blue,
  //         ),
  //         Container(
  //           height: 300,
  //           width: 300,
  //           color: Colors.amber,
  //         ),
  //       ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xffffd700), Color(0xffffa500)],
              begin: FractionalOffset.bottomLeft, end: FractionalOffset.bottomRight
              ),
            ),
          ),
        ),
        // body: ListView.builder(
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index){
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),

        //penggunaan List separated
        // body: ListView.separated(
        //   //untuk memisahkan antar childern
        //   separatorBuilder: (context, index) {
        //     return Divider(
        //       color: Colors.black,
        //     );
        //   },

        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),


        body: ListView(
          children: myList,
          ),
      ),
    );
  }
}
