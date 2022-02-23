import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardListViewku extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;

  CardListViewku({this.imageUrl,this.name, this.text, this.time});

  @override
  Widget build(BuildContext context) {
    return
    //  GestureDetector(
    //       onTap: () {
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => project[index],
    //           ),
    //         );
    //       },
    //       child: 
          Container(
            //height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/Logoku2.png",
                    width: 45,
                    height: 45,
                  ),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        text,
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(time)

                ],
              ),
            ),
          );
        
  }
}