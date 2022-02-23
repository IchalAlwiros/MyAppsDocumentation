import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/bwabasic/fontStlye.dart';

class Property extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coba'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: SafeArea(
            child: Container(
          //color: Colors.amber,
          padding: EdgeInsets.only(left: 0, top: 50.0, right: 0, bottom: 0),
          margin: EdgeInsets.only(left: 30.0, top: 0, right: 30.0, bottom: 0),
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/img.png'),
                //width: 200,
                height: 150,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Learn Spirit',
                  style: mainHeader,
                ),
              ),
              // Text(
              //   'Learn Spirit',
              //   style: mainHeader,
              // ),
              Text(
                'Go to Learn for your self, because you are mother hope ',
                style: subHeader,
                textAlign: TextAlign.center,
              )
            ],
          ),
        )),
      ),
    );
  }
}
