import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/Dashboard/itemDashboard.dart';
import 'package:flutter_basic_forme/pages/alist_myCard.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("DekorasiText Field "),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            generateTextField(labelText: 'Nama Lengkap', icon: Icons.person),
            generateTextFieldPass(labelText: 'Password', icon: Icons.lock),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                child: Text("Login"),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return ProjectDashboard();
                      },
                    ),
                  );
                },
              ),
              
            ),
          ],
        ),
      ),
    );
  }

  Widget generateTextField(
          { String labelText,  IconData icon}) =>
      Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          showCursor: true,
          cursorColor: Colors.orangeAccent,
          cursorWidth: 2,
          cursorHeight: 20,
          cursorRadius: Radius.circular(10),
          textAlign: TextAlign.start,
          //textAlignVertical: TextAlignVertical.bottom,
          textCapitalization: TextCapitalization.words,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
          ),
          decoration: InputDecoration(
              icon: Icon(
                icon,
                size: 35,color: Colors.orange,
              ),
              border: OutlineInputBorder(
                  // borderSide: BorderSide(
                  //   color: Colors.red,
                  // ),
                  ),
              focusedBorder:

               OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
              //prefixText: "Name: ",
              hintText: " Masukan Nama Anda",
              hintStyle: TextStyle(
                color: Colors.orange.shade100,
                fontSize: 14.5,
              ),
              labelText: labelText,
              labelStyle: TextStyle(
                color: Colors.orangeAccent,
              )),
        ),
      );

  Widget generateTextFieldPass(
          { String labelText,  IconData icon}) =>
      Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          showCursor: true,
          cursorColor: Colors.orangeAccent,
          cursorWidth: 2,
          cursorHeight: 20,
          cursorRadius: Radius.circular(20),
          textAlign: TextAlign.start,
          //textAlignVertical: TextAlignVertical.bottom,
          textCapitalization: TextCapitalization.words,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
          ),
          decoration: InputDecoration(
              icon: Icon(
                icon,
                size: 35, color: Colors.orange,
              ),
              border: OutlineInputBorder(
                  // borderSide: BorderSide(
                  //   color: Colors.red,
                  // ),
                  ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
              //prefixText: "Name: ",
              hintText: " Masukan Password",
              hintStyle: TextStyle(
                color: Colors.orange.shade100,
                fontSize: 14.5,
              ),
              labelText: labelText,
              labelStyle: TextStyle(
                color: Colors.orangeAccent,
              )),
        ),
      );
}