import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';

class AppsMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenku(),
    );
  }
}

class HomeScreenku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryheight = MediaQuery.of(context).size.height;
    final mediaQuerywidth = MediaQuery.of(context).size.width;
    final myAppbar = AppBar(
      title: Text('Media Query'),
      centerTitle: true,
    );
    final bodyHeight = mediaQueryheight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    // untuk mengecek pada kondisi landscaepe
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppbar,
      body: SafeArea(
        child: Center(
            child: isLandscape
                ? Column(
                    children: [
                      Container(
                        height: bodyHeight * 0.5,
                        width: mediaQuerywidth,
                        color: Colors.red,
                      ),
                      Container(
                        height: bodyHeight * 0.5,
                        //color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10
                            ),
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return GridTile(
                                child: Container(
                                    color: Color.fromARGB(
                                  255,
                                  Random().nextInt(150),
                                  Random().nextInt(255),
                                  Random().nextInt(255),
                                )),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  )
                : Column(
                    children: [
                      Container(
                        height: bodyHeight * 0.3,
                        width: mediaQuerywidth,
                        color: Colors.red,
                      ),
                      Container(
                        height: bodyHeight * 0.7,
                        color: Colors.green,
                        child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(),
                              title: Text(
                                'Hello',
                                style: styleText2,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )),
      ),
    );
  }
}
