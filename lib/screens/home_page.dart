import "package:flutter/material.dart";

import 'package:device_frame/device_frame.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DeviceFrame(
            device: Devices.ios.iPhone13ProMax,
            screen: const Center(
              child: Text(
                "Hello World",
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ))
      ],
    ));
  }
}
