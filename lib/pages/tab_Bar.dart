import 'package:flutter/material.dart';

class TaBBar extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: 'Tab 1',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: 'Tab 2',
      icon: Icon(Icons.archive_sharp),
    ),
    Tab(
      text: 'Tab 3',
      icon: Icon(Icons.insert_drive_file),
    ),
  ];
  //DefaultTabController myController = DefaultTabController(length: 3, child: null); //controller manual
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length, // menghitung banyal tab yang tersedia
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffffd700), Color(0xffffa500)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight),
              ),
            ),
            title: Text('Alwiros App'),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.deepOrange,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),

              unselectedLabelStyle: TextStyle(
                  fontFamily: 'Ubuntu', fontWeight: FontWeight.normal),

              //indikator manual
              // labelColor: Colors.amberAccent,
              // indicatorColor:Colors.orangeAccent ,
              // indicatorWeight: 5,

              //custom indikator
              indicator: BoxDecoration(
                //color: Colors.amber,
                //borderRadius: BorderRadius.circular(10),
                border: Border(
                  bottom: BorderSide(color: Colors.orange, width: 5),
                ),
              ),

              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text('Klik',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.teal,
                  onSurface: Colors.yellow,
                  side: BorderSide(color: Colors.teal, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                onPressed: () {
                  print('Pressed');
                },
              ),
              
              // Center(
              //   child: Text(
              //     'Tab 1',
              //     style: TextStyle(fontSize: 40),
              //   ),
              // ),
              Center(
                child: Text(
                  'Tab 2',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  'Tab 3',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
