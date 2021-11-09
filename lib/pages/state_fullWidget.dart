import 'package:flutter/material.dart';

class TestStateless extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TestStateless> {
  int angka = 0;

  void tekanTombol() {
    setState(() {
      angka = angka + 1;
    });
  }

  void tekanTombol2() {
    setState(() {
      angka = angka - 1;
    });
  }

  void tekanTombol3() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("StateFull Widget"),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30) ,
                child: Text(
                  angka.toString(),
                  style: TextStyle(fontSize: 20 + angka.toDouble()),
                ),
              ),
              ElevatedButton.icon(
                onPressed: tekanTombol,
                icon: Icon(Icons.add_circle),
                label: Text('Tambah Bilangan'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  fixedSize: Size(200, 50),
                  //shadowColor: Color(0xffffa500),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),

              ElevatedButton.icon(
                onPressed: tekanTombol2,
                icon: Icon(Icons.remove_circle),
                label: Text('Tambah Bilangan'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10))),
                    ),

              ElevatedButton.icon(
                onPressed: tekanTombol3,
                icon: Icon(Icons.delete_outline_outlined),
                label: Text('Tambah Bilangan'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10))),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
