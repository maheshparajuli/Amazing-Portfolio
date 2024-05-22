import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget childG;
  const FrostedContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.childG});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8,
                  sigmaY: 8,
                ),
                child: Container(
                  width: width,
                  height: height,
                )),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.6),
                Colors.white.withOpacity(0.3)
              ])),
              child: childG,
            )
          ],
        ),
      ),
    );
  }
}
