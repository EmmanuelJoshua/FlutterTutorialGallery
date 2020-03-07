import 'package:flutter/material.dart';
import 'package:bmi_app/plant_app/plantapp.dart';
import 'package:bmi_app/planets/planets.dart';

void main() async {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
      color: Colors.blueGrey,
      title: "Tutorials",
      home: PlantApp()
  )
  );
}
