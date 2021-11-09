import 'package:flutter/material.dart';

class DekorasiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DekorasiText Field "),centerTitle: true,
          
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffffd700), Color(0xffffa500)],
              ),
            ),
          ),
        ),
        body: Center(
      
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              showCursor: true,
              cursorColor: Colors.amber,
              cursorWidth: 10,
              cursorHeight: 23,
              cursorRadius: Radius.circular(20),

              textAlign: TextAlign.start,
              //textAlignVertical: TextAlignVertical.bottom,
              textCapitalization: TextCapitalization.words,

              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ),

              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    size: 35,
                  ),
                  border: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Colors.red,
                      // ),
                      ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  //prefixText: "Name: ",
                  hintText: "Masukan Nama Anda",
                  hintStyle: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 14.5,
                  ),
                  labelText: "Full Name",
                  labelStyle: TextStyle(
                    color: Colors.blue.shade900,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}