//import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Extracwitget extends StatelessWidget {
  //var faker = new Faker(); //harus pake null safty
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"), centerTitle: true,
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffffd700), Color(0xffffa500)],
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return setItem(
                imageUrl: 'https://picsum.photos/id/$index/200/300',
                subtitle: 'Aku Adi',
                title: 'Bowo');
          },
        ),
      ),
    );
  }
}

class setItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  setItem(
      {this.imageUrl, this.subtitle, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text('title'),
      subtitle: Text('Subtitle'),
      trailing: Text('10.10 PM'),
    );
  }
}
