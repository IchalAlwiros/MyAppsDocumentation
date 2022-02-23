import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/Dashboard/card.dart';
import 'package:flutter_basic_forme/pages/Dashboard/cardSlider.dart';
import 'package:flutter_basic_forme/pages/DatePicker/datePicker.dart';
import 'package:flutter_basic_forme/pages/alist_myCard.dart';
import 'package:flutter_basic_forme/pages/dismissible.dart';
import 'package:flutter_basic_forme/pages/drawerpage.dart/drawwer.dart';
import 'package:flutter_basic_forme/pages/expandedFlexible/expanded_flexible.dart';
import 'package:flutter_basic_forme/pages/expandedFlexible/fitted.dart';
import 'package:flutter_basic_forme/pages/future_builder/List_Api/get_api.dart';
import 'package:flutter_basic_forme/pages/future_builder/future_builder.dart';
import 'package:flutter_basic_forme/pages/getData%20Api/getmain.dart';
import 'package:flutter_basic_forme/pages/grid_view.dart';
import 'package:flutter_basic_forme/pages/layoutbuilder/layoutBuilder.dart';
import 'package:flutter_basic_forme/pages/opener/opener.dart';
import 'package:flutter_basic_forme/pages/scrollcontroller/scrollcontroller.dart';
import 'package:flutter_basic_forme/pages/shimmer/news_page.dart';
import 'package:flutter_basic_forme/pages/shimmer/shimmer.dart';
import 'package:flutter_basic_forme/pages/sliver_appBar.dart';
import 'package:flutter_basic_forme/pages/switch.dart';
import 'package:flutter_basic_forme/pages/tab_Bar.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDashboard extends StatefulWidget {
  @override
  _ProjectDashboardState createState() => _ProjectDashboardState();
}

class _ProjectDashboardState extends State<ProjectDashboard> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //appBar: AppBar(),
          key: scaffoldKey,
          backgroundColor: Colors.orange,
          drawer: new Drawer(
            child: ListView(
              children: [
                // UserAccountsDrawerHeader(
                //   decoration: BoxDecoration(color: Colors.black),
                //   currentAccountPicture:CircleAvatar(
                //         radius: 30.0,
                //         backgroundColor: Colors.amber,
                //         backgroundImage: AssetImage('assets/images/bground.jpg'),
                //       ),
                // ),
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'Alwiros',
                    style: headerDrawwer,
                  ),
                  accountEmail: Text(
                    'alwirosgroup@gmail.com',
                    style: subheaderDrawwer,
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Pas Fot.png'),
                    backgroundColor: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/gradienta-QWutu2BRpOs-unsplash.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage("assets/images/bground.jpg"),
                //           fit: BoxFit.cover)),
                //   width: MediaQuery.of(context).size.width * 0.8,
                //   child: Column(
                //     children: [

                //       // DrawerHeader(
                //       //   child: Align(
                //       //     child: Text(
                //       //       "Alwiros",
                //       //       style: headerDrawwer,
                //       //     ),
                //       //     alignment: Alignment(-1.0, 0.6),
                //       //   ),
                //       // ),
                //     ],
                //   ),
                // ),

                // Container(

                //   padding: EdgeInsets.all(0),
                //   width: double.infinity,
                //   height: 150,
                //   color: Colors.orange,
                //   alignment: Alignment.bottomLeft,
                //   child: Column(
                //     children: [
                //       Image.asset('bground.jpg'),
                //       Text(
                //     'Menu',
                //     style:menusDrawwer
                //   ),
                //     ],
                //   )
                // ),

                SizedBox(
                  height: 24,
                ),
                ListTile(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('For Your Info',style: dialogDrawwer,),
                            content: Text('Alwiros Learn Documentation', style: dialogsubDrawwer,),
                            actions: [
                              ElevatedButton.icon(
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(FlutterIcons.CodeSandbox_ant),
                                  label: Text('Oke'))
                            ],
                          );
                        });
                  },
                  leading: Image.asset(
                    'assets/images/9.png',
                    //color: Colors.orange,
                    height: 20,
                  ),
                  title: Text(
                    'About me',
                    style: menusDrawwer,
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    'assets/images/7.png',
                    //color: Colors.orange,
                    height: 30,
                  ),
                  title: Text(
                    'Setting',
                    style: menusDrawwer,
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    'assets/images/7.png',
                    //color: Colors.orange,
                    height: 30,
                  ),
                  title: Text(
                    'Setting',
                    style: menusDrawwer,
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    'assets/images/7.png',
                    //color: Colors.orange,
                    height: 30,
                  ),
                  title: Text(
                    'Setting',
                    style: menusDrawwer,
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                
                
                
              ],
            ),
          ),
          body: Stack(
            children: [
              // Positioned(
              //   right: -400.0,
              //   top: -400.0,
              //   child: Opacity(
              //     opacity: 0.3,
              //     child: Image.asset("assets/images/Logoku2.png",),
              //   ),
              // ),

              Positioned(
                  width: 510.0,
                  top: -95.0,
                  child: Container(
                    margin: EdgeInsets.only(left: 200, top: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                              opacity: 0.3,
                              child: Image.asset('assets/images/Logoku2.png',
                                  scale: 1.0)),
                        ]),
                  )),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    // FloatingActionButton(
                    //         child: Icon(Icons.menu),

                    //         backgroundColor: Colors.amber,
                    //         onPressed: () =>
                    //             scaffoldKey.currentState.openDrawer(),
                    //       ),
                    //  Positioned(
                    //         left: 10,
                    //         top: 20,
                    //         child:
                    //         IconButton(
                    //           color: Colors.white,
                    //           icon: Icon(Icons.menu),
                    //           onPressed: () =>
                    //               scaffoldKey.currentState.openDrawer(),
                    //         ),
                    //       ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      //padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.menu),
                            onPressed: () =>
                                scaffoldKey.currentState.openDrawer(),
                          ),

                          // GestureDetector(
                          //   onTap: () {
                          //     Navigator.pop(context);
                          //   },
                          //   child: Icon(
                          //     Icons.menu,
                          //     color: Colors.white,
                          //   ),
                          // ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Welcome Back,\n",
                                        style: titlelitleOpener),
                                    TextSpan(
                                      text: "IchalAlwiros \n",
                                      style: titleOpener,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2.0, color: Colors.white)),
                                child: Image.asset(
                                  'assets/images/Pas Fot.png',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                            child: Text(
                              'Update',
                              style: updateText,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 150.0,
                            color: Colors.white,
                            child: CardSlider(),
                          ),
                          //ListCardView()
                          // Container(
                          //   height: 100,
                          //   color: Colors.amber,
                          //   // child: Expanded(
                          //   //   child: Column(
                          //   //     mainAxisSize: MainAxisSize.min,
                          //   //     children: [
                          //   //       _buildListView(context)
                          //   //     ],
                          //   //   ),
                          //   // ),
                          // )

                          Padding(
                            padding: EdgeInsets.only(
                                top: 20, left: 25.0, right: 25.0, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Update', style: updateText),
                                Text(
                                  'View All',
                                  style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          //   child:
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              color: Colors.white,
                              child: _buildListView(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async => await launch(
                "https://wa.me/${6285853722837}?text=Selamat%20datang%20di%20Alwiros%20team"),
            child: ImageIcon(AssetImage('assets/images/comments.png')),
            backgroundColor: Colors.green,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat),
    );
  }

  ListView _buildListView(BuildContext context) {
    final List<Widget> project = [
      NewsPage(),
      GetDataLearn(),
      FutureBuild(),
      Shimmerku(),
      SwitchKu(),
      ListCard(),
      FutureBuild(),
      GetApi(),
      GriDView(),
      SliverApp(),
      Dismissibel(),
      Drawwer(),
      MyExpandedPage(),
      LayoutBuilderku(),
      DatePickerku(),
      TaBBar(),
      FittedKu(),
      MyExpandedPage(),
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: project.length,
      itemBuilder: (_, index) {
        return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => project[index],
                ),
              );
            },
            child: CardListViewku(
              name: project[index].toString(),
              imageUrl: 'assets/images/Logoku2.png',
              text: project[index].toString(),
              time: 'Now',
            ));
        // Container(
        //   color: Colors.white,
        //   child: ListTile(
        //       //shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(300))),
        //       //tileColor: Colors.red,
        //       //selected: true,
        //       contentPadding:
        //           EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        //       title: Text(
        //         project[index].toString(),
        //         style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //             letterSpacing: 1,
        //             fontFamily: 'Ubuntu',
        //             color: Colors.black87),
        //       ),
        //       subtitle: Text(
        //         'Sekalipun Kamu Bodoh Tetaplah Belajar',
        //         style: TextStyle(fontSize: 13),
        //       ),
        //       leading: CircleAvatar(
        //           backgroundColor: Colors.amber.withOpacity(0.5),
        //           child: Image.asset('assets/images/Logoku2.png')
        //           // Icon(
        //           //   Icons.laptop_chromebook,
        //           //   color: Colors.white,
        //           // ),
        //           ),
        //       trailing: IconButton(
        //         color: Colors.black,
        //         icon: Icon(Icons.arrow_forward),
        //         onPressed: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => project[index],
        //             ),
        //           );
        //         },
        //       )),
        // );
      },
    );
  }
}
