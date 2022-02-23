import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/Dashboard/Model/modelSlider.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';

class CardSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<SliderCardModel> cardslider = [
      SliderCardModel(
          judul: 'Alwiros Project 1',
          subJudul: 'Terbaru',
          color: Colors.orange,
          imageUrl: 'assets/images/house1.png'),
      SliderCardModel(
          judul: 'Alwiros Project 2',
          subJudul: 'Terbaru',
          color: Colors.red,
          imageUrl: 'assets/images/house1.png'),
    ];

    return Container(
      color: Colors.white,
      //height: 100.0,
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 15, right: 15),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 200.0,
              margin: EdgeInsets.only(top: 15, bottom: 15),
              decoration: BoxDecoration(
                  color: cardslider[index].color,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      offset: Offset(0, 2),
                    ),
                  ]
                  ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Positioned(
                      right: -5.0,
                      child: Opacity(
                        opacity: 0.80,
                        child: Image.asset(
                          cardslider[index].imageUrl,
                        ),
                      ),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: '${cardslider[index].judul}\n',
                        style: cardSliderTextstyle,
                      ),
                      TextSpan(
                        text: '${cardslider[index].subJudul}',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      )
                    ]))
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
          itemCount: cardslider.length),
    );
  }
}
