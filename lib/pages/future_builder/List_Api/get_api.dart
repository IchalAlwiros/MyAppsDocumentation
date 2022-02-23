import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/future_builder/List_Api/listtyle.dart';
import 'package:flutter_basic_forme/pages/future_builder/List_Api/model.dart';
import 'package:flutter_basic_forme/pages/future_builder/List_Api/repo.dart';

class GetApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePages(),
    );
  }
}

class MyHomePages extends StatefulWidget {
  @override
  _MyHomePagesState createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  List<Users> listUsers = [];
  Repo repo = Repo();

  getData() async {
    listUsers = await repo.getData();
    setState(() {
      
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black,
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              
              itemBuilder: (context, index) => Listan(
                data: listUsers[index],
              ),
              
              itemCount: listUsers.length,
            ),
          )
        ],
      ),
    ));
  }  


  //NOTE: menampilkan api tertentu dari index
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: ListView.separated(itemBuilder: (context, index){
  //       return Container(child: Text(listUsers[index].title),);
  //     }, separatorBuilder: (context,index){
  //       return Divider(height: 20,);
  //     }, itemCount: listUsers.length)
  //   );
  // }
  
  
  //NOTE : Menampilkan semua api dari index
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: ListView.separated(
  //         itemBuilder: (context, index) => Listan(
  //               data: listUsers[index],
  //             ),
  //         separatorBuilder: (context, index) {
  //           return Divider(
  //           );
  //         },
  //         itemCount: listUsers.length),
  //   );
  // }



// Widget apiTest (){
//   return Container(
//     child: FutureBuilder<List>(future:getData(),
//     builder: (context,snapshot){
//       if (snapshot.connectionState == ConnectionState.done) {
//         return Column(
//           children: [
//             snapshot.data.map((e) => )
//           ],
//         );
//       }

//     })
//     );

// }







  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: ListView.separated(
  //           itemBuilder: (context, index) => FutureBuilder(
  //               future: repo.getData(),
  //               builder: (context, snapshot) {
  //                 if (snapshot.connectionState == ConnectionState.done) {
  //                   return Listan(data: listUsers[index],);
  //                 }
  //               }),
  //           separatorBuilder: (context, index) {
  //             return Divider(
  //               height: 20,
  //             );
  //           },
  //           itemCount: listUsers.length));
  // }
}
