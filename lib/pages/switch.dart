import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';

class SwitchKu extends StatefulWidget {
  @override
  _SwitchKuState createState() => _SwitchKuState();
}

class _SwitchKuState extends State<SwitchKu> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: statusSwitch ? Colors.black : Colors.white,
      // appBar: AppBar(
      //   title: Text('Switch'),
      // ),

      body: SafeArea(
        child: Center(
          child: Container(
            height: 85,
            width: 200,
            // constraints:
            //     BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 1.3),
            //margin: const EdgeInsets.only(top: 100, bottom: 100, left: 90, right: 90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: statusSwitch ? Colors.black : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: statusSwitch ? Colors.white : Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                )
              ],
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                    inactiveThumbColor: Colors.black,
                    //activeTrackColor: Colors.red,
                    activeColor: Colors.white,
                    //inactiveTrackColor: Colors.red,

                    value: statusSwitch,
                    onChanged: (value) {
                      setState(() {
                        statusSwitch = !statusSwitch;
                      });
                      print(statusSwitch);
                    }),
                Text(
                  statusSwitch == false ? 'Dark Mode' : 'Light Mode',
                  style: statusSwitch == false ? styleText2 : styleText3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
