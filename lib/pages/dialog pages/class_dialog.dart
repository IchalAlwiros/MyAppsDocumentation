import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
String data = "Belum ada Input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Dialog'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffffd700), Color(0xffffa500)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          ),
        ),
      ),
      body:Center(child: Text(data, style: TextStyle(fontSize: 35),),),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Di Klik');
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  
                  title: Text('Confirm'),
                  content: Text('Are you sure to delete the item?'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          print('Click Yes');
                          setState(() {
                            data = "TRUE";
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text('YES')),
                    ElevatedButton(
                        onPressed: () {
                          print('Click No');
                          setState(() {
                          data = "FALSE";  
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text('NO'))
                  ],
                );
              });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
