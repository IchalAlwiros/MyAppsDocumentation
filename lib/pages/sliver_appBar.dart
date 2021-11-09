import 'package:flutter/material.dart';

class SliverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // leading: Icon(Icons.arrow_back),
            // title: Text("Test Belejar Bos"),
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
            
              centerTitle: true,
              title: Row(
                children: [

                  SizedBox(width: 12),
                  CircleAvatar(backgroundColor: Colors.orange,),
                  SizedBox(width: 12),
                  Text('Ichal Wira')
                  ],
                ),
              background: Image.network(
                'https://images.pexels.com/photos/848117/pexels-photo-848117.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              primary:  false,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (ctx, i) => Card(child: ListTile(
                leading: Icon(Icons.edit),
                title: Text("Belajar Blok"),
                subtitle: Text("Belajar Tolol"),
                trailing: Icon(Icons.delete),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
