import 'package:flutter/material.dart';
import 'package:bmi_app/sharedpreference/sharepreference.dart';
import 'package:bmi_app/backdrop_demo/demo.dart';

import 'backdrop_demo/backdrop.dart';

void main() => HomePages();

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
      value: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      home: HomePage(
        backdrop: Backdrop(
          frontLayer: ProductPage(),
          backLayer: Container(),
          frontTitle: const Text('SHRINE'),
          backTitle: const Text('MENU'),
          controller: _controller,
        ),
      ),
      initialRoute: '/login',
    );
  }
}

