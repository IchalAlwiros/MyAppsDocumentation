import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/shimmer/constract.dart';


class NewsCard extends StatelessWidget {
  const NewsCard({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(image),
            ),
            const SizedBox(width: defaultPadding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Metromini",
                    style: styleshimmer 
                    //Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding / 2),
                    child: Text(
                      "Aww Nak sugeng enjing sedoyo’",
                      style: styleshimmer.copyWith(fontWeight: FontWeight.w600),
                      //Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "Politik",
                        style: TextStyle(color: Colors.amber),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding / 2),
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: grayColor,
                        ),
                      ),
                      Text(
                        "3m lalu",
                        style: TextStyle(color: grayColor),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}