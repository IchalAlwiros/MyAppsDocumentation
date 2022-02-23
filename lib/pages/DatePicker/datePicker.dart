import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';

class DatePickerku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDatepicker(),
    );
  }
}

class MyDatepicker extends StatefulWidget {
  @override
  _MyDatepickerState createState() => _MyDatepickerState();
}

class _MyDatepickerState extends State<MyDatepicker> {
  DateTime selectDate = DateTime.now();
  bool statusSwicth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: statusSwicth ? Colors.black : Colors.white,
      body: Center(
        child: TextFormField(
          decoration: InputDecoration(hintText: (selectDate.toString())),
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Switch(
        //       inactiveThumbColor: Colors.black,
        //       activeColor: Colors.white,
        //       value: statusSwicth,
        //       onChanged: (value) {
        //         setState(() {
        //           statusSwicth = !statusSwicth;
        //         });
        //       },
        //     ),
        //     Text(
        //       'Saiki Tanggal?',
        //       style: styleText,
        //     ),
        //     Text(
        //       '$selectDate' /*selectDate.toString()*/,
        //       style: statusSwicth ? styleText3 : styleText2,
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     ElevatedButton(
        //         style: ButtonStyle(
        //             backgroundColor: statusSwicth
        //                 ? MaterialStateProperty.all(Colors.white)
        //                 : MaterialStateProperty.all(Colors.orange),
        //             textStyle: statusSwicth
        //                 ? MaterialStateProperty.all(styleText2)
        //                 : MaterialStateProperty.all(styleText2),
        //             overlayColor: MaterialStateProperty.all(
        //                 Colors.amber), //efek ketika tombol ditekan
        //             padding: MaterialStateProperty.all(EdgeInsets.only(
        //                 bottom: 10, top: 10, left: 40, right: 40)),
        //             shape: MaterialStateProperty.all(RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(20))),
        //             shadowColor: MaterialStateProperty.all(Colors.black)),
        //         onPressed: () {
        //           showDatePicker(
        //               //date picker tipenya future
        //               context: context,
        //               initialDate: selectDate,
        //               firstDate: DateTime(2000),
        //               lastDate: DateTime(2025),
                      
                      
        //               // initialEntryMode: DatePickerEntryMode.input //bisa memilih mode input atau mode calender
        //               // initialDatePickerMode: DatePickerMode.year  //pertama kali muncul diawal clik datepickernya
        //               //menentukan range tanggal mana yang di nonaktifkan
        //               // selectableDayPredicate: (day) { //day adalah harini ini
        //               //   if ((day.isAfter( //dari jumlah hari sampai hari ini
        //               //     DateTime.now().subtract(
        //               //       Duration(
        //               //         days: 2,
        //               //       ),
        //               //     ),
        //               //   )) &&  (day.isBefore(
        //               //     DateTime.now().add(
        //               //       Duration(
        //               //         days: 2,
        //               //       ),
        //               //     ),
        //               //   ))) {
        //               //     return true;
        //               //   }
        //               //   return false;
        //               // }

        //               helpText: "Help Text",
        //               cancelText: "cancel Text",
        //               confirmText: "confirm",
        //               fieldHintText: "hinttext",
        //               fieldLabelText: "dssdf",
        //               //errorInvalidText: 'sasxa'
        //               builder: (context, child) {
        //                 return Theme(
        //                   data: statusSwicth
        //                       ? ThemeData.dark().copyWith(
        //                           textTheme: TextTheme(
                                    
        //                           ),
        //                           colorScheme: ColorScheme.light(
        //                             primary: Colors.red, // header background color
        //                             //onPrimary:secondColor, // header text color
        //                             onSurface: secondColor, // body text color
        //                           ),
        //                           textButtonTheme: TextButtonThemeData(
        //                             style: 
        //                             TextButton.styleFrom(
        //                               primary:Colors.white, // button text color
        //                             ),
        //                           ),
        //                         )
        //                       : ThemeData.light(),
        //                   child: child, //child adalah tampilan dari dateTimenya
        //                 );
        //               }).then((value) {
        //             //then mengembalikan future datetime
        //             if (value != null) {
        //               setState(() {
        //                 selectDate = value;
        //               });
        //             }
        //           });
        //         },
        //         child: Text('Tanggalan saiki')),
        //   ],
        // ),
      ),
    );
  }
}
