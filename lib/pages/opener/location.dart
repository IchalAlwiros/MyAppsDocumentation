import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/opener/openermodel/modellist.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:laundry_app_ui/models/location.dart';

class LocationSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Model to represent each card

    // Make a list to represent each card
    List<Location> locations = [
      Location(
        address: "Kediri hiri hiri",
        color: Color.fromRGBO(89, 69, 199, 1),
        state: "Jawa Timur",
        imagePath: "assets/images/house1.png",
      ),
      Location(
        address: "Kediri hiri hiri",
        color: Color.fromRGBO(237, 116, 41, 1),
        state: "Jawa Timur",
        imagePath: "assets/images/house2.png",
      ),
     
    ];
    return Container(
      color: Colors.white,
      height: 100.0 /*ScreenUtil().setHeight(100.0)*/,
      child: ListView.separated(
        physics: BouncingScrollPhysics(), //unutk memberikan efek memantul saat mentok discroll
        padding: EdgeInsets.only(left: 20, right: 20) /*symmetric(horizontal: 24.0)*/, //memberi batas antar samping 
        scrollDirection: Axis.horizontal, //Scroll ke samping
        itemBuilder: ( context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: 200.0 /*ScreenUtil().setWidth(200.0)*/, 
              decoration: BoxDecoration(
                color: locations[index].color,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    //spreadRadius: 0,
                    blurRadius: 8.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 12.0,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                     right: -5.0,
                    // top: 0.0,
                    child: Opacity(
                      opacity: 0.80,
                      child: Image.asset(
                        locations[index].imagePath,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${locations[index].address},\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: "${locations[index].state}",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15.0,
          );
        },
        itemCount: locations.length,
      ),
    );
  }
}
