import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmerku extends StatelessWidget {

  // final double width;
  // final double height;
  // final ShapeBorder shapeBorder;

//   const Shimmerku.rectangular({
//     this.width = double.infinity,
//     @required this.height
// }): this.shapeBorder = const RoundedRectangleBorder();

//   const Shimmerku.circular({
//     this.width = double.infinity,
//     @required this.height,
//     this.shapeBorder = const CircleBorder()
//   });

  @override
  Widget build(BuildContext context)  => Shimmer.fromColors(
    baseColor: Colors.grey,
    highlightColor: Colors.grey[300],
    period: Duration(seconds: 2),
    child: Container(
      width: 10,
      height: 10,
      decoration: ShapeDecoration(
        color: Colors.grey[400],
        shape: CircleBorder(),

      ),
    ),
  );
}