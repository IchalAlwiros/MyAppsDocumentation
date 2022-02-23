import 'dart:convert';

import 'package:flutter_basic_forme/pages/future_builder/List_Api/model.dart';
import 'package:http/http.dart' as http;

class Repo {
  final _baseUrl = 'https://619b225427827600174453e4.mockapi.io/api/v1/users';

  Future getData() async {
    try {
      var response = await http.get(Uri.parse(_baseUrl));
      if(response.statusCode == 200){
        Iterable it = jsonDecode(response.body);
        List<Users> user = it.map((e) => Users.fromJson(e)).toList();

        
        print(user);
        print(it);
        print(response.body);
        return user;
      } 
    } catch (e) {
      print(e.toString());
    }
  }
}