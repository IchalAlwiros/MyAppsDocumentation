import 'package:flutter/material.dart';

class CardButtonPage extends StatelessWidget {
  const CardButtonPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, "Account Box"),//method buatan
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid "),
              buildCard(Icons.adb, "Tawon Droid ")
            ],
          ),
        ),
      );
  }
  
  Card buildCard(IconData iconData, String text) {
    return Card(
              elevation:5 ,//jarak antara card /shadow
              child: Row(
                children: <Widget>[
                  Container(margin: EdgeInsets.all(5), child: Icon(iconData)),
                  Text("Account Box")
                ],
              ),
            );
  }
}