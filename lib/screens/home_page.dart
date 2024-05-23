import 'package:custom_button_builder/custom_button_builder.dart';
import "package:flutter/material.dart";
import 'package:flutter_application/constants/data.dart';
import 'package:flutter_application/provider/current_state.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:device_frame/device_frame.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/widgets/frosted_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          Selector<CurrentState, int>(
              selector: (context, provider) => provider.selectedwala,
              builder: (context, _, __) {
                return Container(
                  decoration: BoxDecoration(
                      gradient:
                          colorPalette[currentState.selectedwala].gradient),
                );
              }),
          Selector<CurrentState, int>(
              selector: (context, provider) => provider.selectedwala,
              builder: (context, _, __) {
                return SvgPicture.asset(
                  colorPalette[currentState.selectedwala].svgPath,
                  height: size.height,
                  fit: BoxFit.cover,
                );
              }),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      FrostedContainer(width: 200, height: 300, childG: Wrap()),
                      SizedBox(
                        height: 20,
                      ),
                      FrostedContainer(
                        width: 200,
                        height: 150,
                        childG: Wrap(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(
                        builder: (context, ccurrentState, __) {
                      return DeviceFrame(
                          device: currentState.currentDevice,
                          screen: Container(
                            color: Colors.red,
                            child: const Center(
                              child: Text(
                                "Hello! Beautiful Souls",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                          ));
                    }),
                  ),
                  Column(
                    children: [
                      FrostedContainer(
                        width: 200,
                        height: 300,
                        childG: Center(
                          child: Wrap(
                            children: [
                              ...List.generate(
                                colorPalette.length,
                                (index) => CustomButton(
                                  margin: EdgeInsets.all(4),
                                  onPressed: () {
                                    currentState.changeGradient(index);
                                  },
                                  pressed: currentState.selectedwala == index
                                      ? Pressed.pressed
                                      : Pressed.notPressed,
                                  animate: true,
                                  isThreeD: true,
                                  height: 54,
                                  width: 52,
                                  borderRadius: 100,
                                  shadowColor: Colors.white,
                                  backgroundColor: colorPalette[index].color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FrostedContainer(
                        width: 200,
                        height: 150,
                        childG: Wrap(),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                      devices.length,
                      (index) => Selector<CurrentState, DeviceInfo>(
                          selector: (context, provider) =>
                              provider.currentDevice,
                          builder: (context, _, __) {
                            return CustomButton(
                              height: 40,
                              width: 40,
                              borderRadius: 40,
                              backgroundColor: Colors.black,
                              onPressed: () {
                                currentState.changeSelectedDevice(
                                    devices[index].device);
                              },
                              animate: true,
                              pressed: currentState.currentDevice ==
                                      devices[index].device
                                  ? Pressed.pressed
                                  : Pressed.notPressed,
                              isThreeD: true,
                              shadowColor: Colors.green,
                              child: Center(
                                child: Icon(
                                  devices[index].data,
                                  color: Colors.green,
                                ),
                              ),
                            );
                          }))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
