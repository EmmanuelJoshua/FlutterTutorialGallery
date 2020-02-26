import 'package:flutter/material.dart';
import 'package:bmi_app/parsing_json/quakes.dart';
import 'package:bmi_app/bmi_app/bmi.dart';

void main() async {
  runApp(new MaterialApp(
      color: Colors.red,
      title: "Tutorials",
      home: Quakes()));
}
