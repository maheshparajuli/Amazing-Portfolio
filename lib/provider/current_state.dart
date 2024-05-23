import "package:flutter/material.dart";

import 'package:device_frame/device_frame.dart';

class CurrentState extends ChangeNotifier {
  DeviceInfo currentDevice = Devices.ios.iPhone13ProMax;
  int selectedwala = 2;
  void changeSelectedDevice(DeviceInfo device) {
    currentDevice = device;
    notifyListeners();
  }

  void changeGradient(int index) {
    selectedwala = index;
    notifyListeners();
  }
}
