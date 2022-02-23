import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/chat/textstyle.dart';

class Chat extends StatelessWidget {
  final bool isMine;
  final String massage;

  Chat(this.isMine, this.massage);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        IntrinsicWidth(
          child: Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width / 1.3),
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: isMine ? Color(0xffFFD644) : Color(0xffEBEFF3),
              borderRadius: BorderRadius.only(
                topLeft: isMine ? Radius.circular(20) : Radius.circular(20),
                bottomLeft: isMine ? Radius.circular(20) : Radius.circular(0),
                bottomRight: isMine ? Radius.circular(0) : Radius.circular(20),
                topRight: isMine ? Radius.circular(20) : Radius.circular(20),
              ),
            ),
            child: Text(
              massage,
              style: massageTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
