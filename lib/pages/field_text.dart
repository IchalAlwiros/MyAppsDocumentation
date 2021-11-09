import 'package:flutter/material.dart';

class Fieldtxt extends StatefulWidget {
  @override
  _FieldtxtState createState() => _FieldtxtState();
}

class _FieldtxtState extends State<Fieldtxt> {
  final TextEditingController myController = TextEditingController();
  String hasil = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),centerTitle: true,
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffffd700), Color(0xffffa500)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          ),
        ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value){
                    print("On Change");
                   
                  },
                  onSubmitted: (value){
                    print(value);
                     setState(() {
                      hasil = value;
                    });
                  },
                  onEditingComplete: (){
                    print("Edited");
                    print (myController.text);
                  },
                ),
                Text(hasil),
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}