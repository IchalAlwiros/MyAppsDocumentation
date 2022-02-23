import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/opener/card.dart';
//import 'package:flutter_basic_forme/pages/opener/card.dart';
import 'package:flutter_basic_forme/pages/opener/location.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';
import 'package:flutter_icons/flutter_icons.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:laundry_app_ui/utils/constants.dart';
// import 'package:laundry_app_ui/widgets/latest_orders.dart';
// import 'package:laundry_app_ui/widgets/location_slider.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Track active index

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Stack(
          //clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 6.0,
              top: -20.0,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  "assets/images/washing_machine_illustration.png",
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 26.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                               Navigator.pop(context);
                            },
                            child: Icon(
                              FlutterIcons.keyboard_backspace_mdi,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    
                                    TextSpan(
                                      text: "Welcome Back,\n",
                                      style: titlelitleOpener 
                                      
                                      // Theme.of(context)
                                      //     .textTheme
                                      //     .headline6
                                      //     .copyWith(
                                      //       color: Colors.white,
                                      //     ),
                                    ),
    
                                    TextSpan(
                                      text: "IchalAlwiros",
                                      style:  titleOpener
                                      
                                      // Theme.of(context)
                                      //     .textTheme
                                      //     .headline6
                                      //     .copyWith(
                                      //       color: Colors.white,
                                      //       fontWeight: FontWeight.w600,
                                      //     ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 70,
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white
                                  )
                                ),
                                child: Image.asset(
                                  "assets/images/Pas Fot.png",
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      //width: double.infinity,
                      //constraints: BoxConstraints( //Membuat batasan kotak dengan batasan yang diberikan.
                        //minHeight: MediaQuery.of(context).size.height - 200.0,
                      //),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        color: Colors.white,
                      ),
                      //padding batas atas
                      padding: EdgeInsets.symmetric(
                        vertical: 40.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Padding(
                             padding: EdgeInsets.symmetric(
                               horizontal: 24.0,
                             ), //memberi paddding pada tulisan 
                             child: 
                            Text(
                              "New Palapa",
                              style: titleObOpener
                              
                              // TextStyle(
                              //   color: Color.fromRGBO(19, 22, 33, 1),
                              //   fontSize: 18.0,
                              // ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 100.0 /*ScreenUtil().setHeight(100.0)*/,
                            //child: Center(
                              // lets make a widget for the cards
                              child: LocationSlider(),
                            ),
                          //),
                          LatestOrders(),
                          
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
