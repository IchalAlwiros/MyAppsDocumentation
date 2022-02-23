import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/Dashboard/itemDashboard.dart';
import 'package:flutter_basic_forme/pages/DatePicker/datePicker.dart';
import 'package:flutter_basic_forme/pages/Model/model.dart';
import 'package:flutter_basic_forme/pages/bwabasic/bwabasic1.dart';
import 'package:flutter_basic_forme/pages/bwabasic/ratatengahrow.dart';
import 'package:flutter_basic_forme/pages/card_button.dart';
import 'package:flutter_basic_forme/pages/chat/chat.dart';
import 'package:flutter_basic_forme/pages/decoration_text.dart';
import 'package:flutter_basic_forme/pages/dialog%20pages/dialog.dart';
import 'package:flutter_basic_forme/pages/dismissible.dart';
import 'package:flutter_basic_forme/pages/drawerpage.dart/drawwer.dart';
import 'package:flutter_basic_forme/pages/expandedFlexible/expanded_flexible.dart';
import 'package:flutter_basic_forme/pages/expandedFlexible/fitted.dart';
import 'package:flutter_basic_forme/pages/extract_widget.dart';
import 'package:flutter_basic_forme/pages/field_text.dart';
import 'package:flutter_basic_forme/pages/future_builder/List_Api/get_api.dart';
import 'package:flutter_basic_forme/pages/future_builder/future_builder.dart';
import 'package:flutter_basic_forme/pages/grid_view.dart';
import 'package:flutter_basic_forme/pages/layoutbuilder/layoutBuilder.dart';
import 'package:flutter_basic_forme/pages/list_View.dart';
import 'package:flutter_basic_forme/pages/mapping_list.dart';
import 'package:flutter_basic_forme/pages/mediaQuery/mediaQuery.dart';
import 'package:flutter_basic_forme/pages/media_Query.dart';
import 'package:flutter_basic_forme/pages/opener/opener.dart';
import 'package:flutter_basic_forme/pages/push_push.dart';
import 'package:flutter_basic_forme/pages/scrollcontroller/scrollcontroller.dart';
import 'package:flutter_basic_forme/pages/scrorlstact.dart/scrolstack.dart';
import 'package:flutter_basic_forme/pages/shimmer/news_page.dart';
import 'package:flutter_basic_forme/pages/sliver_appBar.dart';
import 'package:flutter_basic_forme/pages/spacer_app.dart';
import 'package:flutter_basic_forme/pages/state_fullWidget.dart';
import 'package:flutter_basic_forme/pages/switch.dart';
import 'package:flutter_basic_forme/pages/tab_Bar.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListCard(),
    );
  }
}

class ListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Alwiros Project'), centerTitle: true,
        //memberi icon pojok
        leading: Icon(
          Icons.adb,
          color: Colors.white,
        ),
        //fitur
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          )
        ],

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffffd700), Color(0xffffa500)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          ),
        ),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    final List<Widget> page = [
      //RoundedList()
      //MyApp(),
      NewsPage(),
      MyApp(),
      Dashboard(),
      ProjectDashboard(),
      LayoutBuilderku(),
      DatePickerku(),
      FittedKu(),
      MyExpandedPage(),
      GetApi(),
      FutureBuild(),
      ModelsKu(),
      AppsMediaQuery(),
      SwitchKu(),
      Chat(true, 'Hallaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
      SliverApp(),
      MappingList(),
      MyListView(),
      DialogApp(),
      Drawwer(),
      Dismissibel(),
      SpacerApp(),
      Mediaquery(),
      TestStateless(),
      CardButtonPage(),
      DekorasiText(),
      Extracwitget(),
      PushPop(),
      Property(),
      Property2(),
      Fieldtxt(),
      TaBBar(),
      GriDView(),
    ];

    return ListView.builder(
      itemCount: page.length,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(300))),
              //tileColor: Colors.red,
              //selected: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 00.0, horizontal: 20.0),
              title: Text(
                page[index].toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontFamily: 'Ubuntu',
                    color: Colors.black87),
              ),
              subtitle: Text(
                'Sekalipun Kamu Bodoh Tetaplah Belajar',
                style: TextStyle(fontSize: 13),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.laptop_chromebook,
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                color: Colors.black,
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => page[index],
                    ),
                  );
                },
              )),
        );
      },
    );
  }
}
