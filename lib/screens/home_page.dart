import 'package:custom_button_builder/custom_button_builder.dart';
import "package:flutter/material.dart";
import 'package:flutter_application/constants/data.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:device_frame/device_frame.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.blue, Colors.black45])),
        ),
        SvgPicture.asset(
          "assets/images/blue_cloud.svg",
          height: size.height,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height - 100,
                  child: DeviceFrame(
                      device: Devices.ios.iPhone13ProMax,
                      screen: Container(
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            "Hello! Beautiful Souls",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      )),
                ),
                Row(
                  children: [
                    ...List.generate(
                        devices.length,
                        (index) => CustomButton(
                              onPressed: () {},
                              isThreeD: true,
                              child: Center(
                                child: Icon(devices[index].data),
                              ),
                            ))
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
