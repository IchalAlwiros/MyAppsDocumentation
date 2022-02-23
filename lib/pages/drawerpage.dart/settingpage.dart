import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/drawerpage.dart/pagesatu.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Setting'),
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
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 120,
                color: Colors.orangeAccent,
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Menu',
                  style: TextStyle(
                      fontSize: 24, color: Colors.white, fontFamily: 'Ubuntu'),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ListTile(
                onTap: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => PageSatu() ,),
                  );
                },
                leading: Icon(Icons.home,size: 30,),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.orangeAccent, 
                    fontSize: 20),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SettingPage() ,),
                  );
                },
                leading: Icon(Icons.settings,size: 30,),
                title: Text(
                  'Setting',
                  style: TextStyle(
                    color: Colors.orangeAccent, 
                    fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(
            'Text Here',
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}