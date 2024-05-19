import "package:flutter/material.dart";

import 'package:device_frame/device_frame.dart';

class CurrentState extends ChangeNotifier {
  DeviceInfo currentDevice = Devices.ios.iPhone13;

  void changeDevice(DeviceInfo device) {
    currentDevice = device;
    notifyListeners();
  }
}
