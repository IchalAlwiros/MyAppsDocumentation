import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/Dashboard/itemDashboard.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Image.asset(
        'assets/images/bg.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.fill,
      );
    }

    Widget content() {
      return SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'My Dreams are not as Beautiful as your Dreams but I have Extraordinary Determination',
                style: titleOnboarding
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '99,999 decumentation available',
                style: titleSubOnboarding
              ),
              Spacer(),
              Center(
                child: Container(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return ProjectDashboard();
                          },
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                       style: buttonOnboarding
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return ProjectDashboard();
                      }));
                    },
                    style: TextButton.styleFrom(
                      //backgroundColor: transparentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                        side: BorderSide(
                            color: Colors.white,
                            ),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: buttonOnboarding
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          content(),
        ],
      ),
    );
  }
}
