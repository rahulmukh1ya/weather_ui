import 'package:flutter/material.dart';

class WeatherModel {
  final String time;
  final IconData iconData;
  final String temperature;
  final bool isSelected;

  WeatherModel({
    required this.time,
    required this.iconData,
    required this.temperature,
    this.isSelected = false,
  });
}

