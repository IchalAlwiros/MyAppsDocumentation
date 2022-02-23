import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/getData%20Api/isLoading.dart';
import 'package:http/http.dart' as http;

class GetDataLearn extends StatefulWidget {
  @override
  _GetDataLearnState createState() => _GetDataLearnState();
}

class _GetDataLearnState extends State<GetDataLearn> {
  getUserData() async {
    var respone =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(respone.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u['name'], u['email'], u['username']);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Card(
        child: FutureBuilder(
          future: getUserData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) => const IsReloading(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16.0),
              );
            } else
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                    trailing: Text(snapshot.data[index].userName),
                  );
                },
                itemCount: snapshot.data.length,
              );
          },
        ),
      ),
    ));
  }
}

class User {
  final String name, email, userName;

  User(this.name, this.email, this.userName);
}

class IsReloading extends StatelessWidget {
  const IsReloading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IsLoading(width: 80),
                const SizedBox(height: 16.0 / 2),
                const IsLoading(),
                const SizedBox(height: 16.0 / 2),
                Row(
                  children: const [
                    Expanded(
                      child: IsLoading(),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: IsLoading(),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
