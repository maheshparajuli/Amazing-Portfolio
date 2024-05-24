import 'package:flutter/material.dart';

class AppModel {
  String title;
  String assetPath;
  IconData icon;
  Color color;
  Widget? screen;
  String link;

  AppModel(
      {required this.title,
      required this.assetPath,
      required this.icon,
      required this.color,
      required this.screen,
      required this.link})
      : assert(icon == null || assetPath == null);
}
