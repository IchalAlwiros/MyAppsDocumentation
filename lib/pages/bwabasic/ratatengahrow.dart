import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/bwabasic/fontStlye.dart';

class Property2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Coba'),
        //   centerTitle: true,
        //   backgroundColor: Colors.amber,
        //   //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        // ),
        body: SafeArea(
            child: Container(
          //color: Colors.amber,
          padding: EdgeInsets.only(left: 0, top: 0.0, right: 0, bottom: 0),
          margin: EdgeInsets.only(left: 25.0, top: 0, right: 20.0, bottom: 0),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: <Widget> [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/img.png'),
                //width: 200,
                height: 150,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
                child: Text(
                  'Learn Spirit',
                  style: mainHeader2,
                ),
              ),
              // Text(
              //   'Learn Spirit',
              //   style: mainHeader,
              // ),
              Text(
                'Go to Learn for your self, because \nyou are your mothers hope ',
                style: subHeader2,
                textAlign: TextAlign.center,
              )
            ],
          ),
            ],
          )
        )),
      ),
    );
  }
}
