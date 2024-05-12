import "package:flutter/material.dart";

import 'package:device_frame/device_frame.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.blue,Colors.black45]
              )
            ),
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DeviceFrame(
                device: Devices.ios.iPhone13ProMax,
                screen: const Center(
                  child: Text(
                    "Hello! Beautiful Souls",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 30.0,
                    ),
                  ),
                ))
          ],
              ),
        ],
      )
     );
  }
}
