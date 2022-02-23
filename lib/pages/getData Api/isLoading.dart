import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/shimmer/constract.dart';
import 'package:shimmer/shimmer.dart';

class IsLoading extends StatelessWidget {
  const IsLoading({Key key, this.height, this.width}) : super(key: key);

  final double height, width;

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.6),
            borderRadius:
                const BorderRadius.all(Radius.circular(defaultPadding))),
      ),
      baseColor: Colors.grey,
      highlightColor: Colors.grey[300]);
}

