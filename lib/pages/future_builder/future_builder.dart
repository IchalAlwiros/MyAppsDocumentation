import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class FutureBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePages(),
    );
  }
}

class HomePages extends StatelessWidget {
  Future<Map<String, dynamic>> ambilData() async {
    try {
      var hasilGet = await http.get(
        Uri.parse('https://reqres.in/api/users/2'),
      ); //ketika melakukan get data diakan menunggu apakah mengembalikan sesuatu atau belum
      //mengecek API yang error
      if (hasilGet.statusCode == 200) {
        var data = jsonDecode(hasilGet.body)['data']/* as Map<String, dynamic>*/;
        return data;
      } else {
        throw (hasilGet.statusCode);
      }
    } catch (err) {
      throw err;
    }
    //print(data);
    //karena data ini tipenya mapping
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder'),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: ambilData(), //menunggu hasilkembalian dari future
          builder: (context, snapshot) {
            if (snapshot.error != null) {
              return Center(
                child: Icon(Icons.error_outline),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              //jika masih witing mau menampilkan apa
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.orange,
                ),
              );
            } else {
              //jika sudah done/dapat datanya maka akan menampilkan return
              //print(snapshot.data['first_name']);
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 58,
                      height: 58,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network('${snapshot.data['avatar']}'),
                    ),
                    Text(
                      'Name: ${snapshot.data['first_name']} ${snapshot.data['last_name']}',
                      // '${snapshot.data[]}',
                      style: styleText,
                    ),
                  ],
                ),
              );
            }

            // print(snapshot);
            // return bowo();
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: ambilData,
      ),
    );
  }
}

// Widget bowo() {
//   return Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           '${snapshot.data['first_name']}',
//           // '${snapshot.data[]}',
//           style: styleText,
//         ),
//       ],
//     ),
//   );
// }
