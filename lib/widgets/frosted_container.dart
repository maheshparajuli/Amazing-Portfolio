import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedContainer extends StatelessWidget {
  const FrostedContainer({super.key});

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
                  width: 130,
                  height: 220,
                )),
            Container(
              height: 220,
              width: 130,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.6),
                Colors.white.withOpacity(0.3)
              ])),
            )
          ],
        ),
      ),
    );
  }
}
