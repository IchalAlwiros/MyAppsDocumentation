import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Dismissibel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismisible'),
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
      body: ListView.builder(
        padding: EdgeInsets.all(9),
        itemCount: 15,
        itemBuilder: (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              print("Dismissed");
              print(direction);
              if (direction == DismissDirection.endToStart) {
                print('End to Start');
              } else {
                print('Start To End');
              }
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context, 
                builder: (context){
                  return AlertDialog(
                    title: Text('Confirm'),
                    
                    content: Text('Are You Sure to Delete?'),
                    actions: [
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pop(false);
                      }, child: Text('NO')),
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pop(true);
                      }, child: Text('YES'))
                    ],
                  );
                });
            },
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.deepOrange,
              child: Icon(
                Icons.delete,
                size: 25,
                color: Colors.white,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
            ),
            child: ListTile(
              leading: CircleAvatar(
                
                child: Center(
                  child: Text("${index + 1}"),
                ),
                backgroundColor: Colors.orange,
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}
