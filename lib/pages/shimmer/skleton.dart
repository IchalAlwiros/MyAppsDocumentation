import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/shimmer/constract.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key key, this.height, this.width}) : super(key: key);

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

// class CircleSkeleton extends StatelessWidget {
//   const CircleSkeleton({Key key, this.size = 24}) : super(key: key);

//   final double size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: size,
//       width: size,
//       decoration: BoxDecoration(
//         color: Theme.of(context).primaryColor.withOpacity(0.04),
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }
