import 'package:flutter/material.dart';

class MappingList extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    //dynamic value yag bisa beruubah ubah
    {
      "Nama": "Saitama",
      "Umur": 99,
      "favColor": [
        "Red",
        "Blue",
        "Green",
        "Red",
        "Blue",
        "Green" "Red",
        "Blue",
        "Green"
      ],
    },
    {
      "Nama": "Dick",
      "Umur": 666,
      "favColor": ["Yellow", "Green", "Orange"]
    },
    {
      "Nama": "Dick",
      "Umur": 666,
      "favColor": ["Yellow", "Green", "Orange"]
    },
    {
      "Nama": "Saitama",
      "Umur": 99,
      "favColor": [
        "Red",
        "Blue",
        "Green",
        "Red",
        "Blue",
        "Green" "Red",
        "Blue",
        "Green"
      ],
    },
    {
      "Nama": "Dick",
      "Umur": 666,
      "favColor": ["Yellow", "Green", "Orange"]
    },
    {
      "Nama": "Dick",
      "Umur": 666,
      "favColor": ["Yellow", "Green", "Orange"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
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
        backgroundColor: Colors.orangeAccent,
        body: ListView(
          children: myList.map((data) {
            print(data["favColor"]);
            List myfavcolor = data["favColor"];
            return Card(
              elevation: 10.0,
              margin: EdgeInsets.all(15.0),
              color: Colors.orange,
              child: Container(
                margin: EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //row
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromRGBO(255, 185, 92, 0.6),
                            child:
                                Icon(Icons.people, color: Colors.deepOrange)),
                        SizedBox(width: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nama: ${data['Nama']}",
                              style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Umur ${data['Umur']}",
                              style: TextStyle(fontFamily: 'Ubuntu'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //favColor
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myfavcolor.map((color) {
                          return Card(
                            margin: EdgeInsets.all(15),
                            elevation: 9,
                            child: Container(
                                //color: Color(0),
                                margin: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 8),
                                padding: EdgeInsets.all(1),
                                child: Text(
                                  color,
                                  style: TextStyle(
                                      fontFamily: 'Ubuntu',
                                      fontWeight: FontWeight.bold),
                                )),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
