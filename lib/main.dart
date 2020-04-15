import 'package:flutter/material.dart';
import 'package:bmi_app/sharedpreference/sharepreference.dart';

void main() async {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
      color: Colors.blueGrey,
      title: "Tutorials",
      home: SharedPref()
  )
  );
}
