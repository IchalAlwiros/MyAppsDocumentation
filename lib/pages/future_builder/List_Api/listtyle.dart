import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/future_builder/List_Api/model.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:future_jobs/model/job_model.dart';
//import 'package:future_jobs/model/job_model.dart';
// import 'package:future_jobs/pages/detail_page.dart';

// import '../theme.dart';

class Listan extends StatelessWidget {
  // final String name;
  // final String companyName;
  // final String companyLogo;

  //PENG
  final Users data;

  // JobTile({
    
  //   this.name,
  //   this.companyName,
  //   this.companyLogo, 
  // });
  Listan({this.data});

  @override
  Widget build(BuildContext context) {
 
    return Container(
        //height: 100,
         constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width / 1.3),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.orange,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                data.content,
                width: 45,
                height: 45,
              ),
              SizedBox(width: 25),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                  
                    Text(
                      data.id,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // Container(
    //   padding: EdgeInsets.only(bottom: 0,top: 10, left: 20, right: 20),
    //   child: Row(
          
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Image.network(
    //           data.content ,
    //           width: 44,
    //         ),
    //         // Text(
    //         //   data.content
    //         // ),
    //         SizedBox(
    //           width: 24,
    //         ),
    //         Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 data.id,
    //                 style: styleText.copyWith(
    //                   fontSize: 16,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 2,
    //               ),
    //               Text(
    //                 data.title,
    //                 style: styleText,
    //               ),
    //               SizedBox(
    //                 height: 18,
    //               ),
    //               // Divider(
    //               //   thickness: 1,
    //               // ),
    //               SizedBox(
    //                 height: 16,
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    // );
    
  }
}
