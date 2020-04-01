import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1D2427),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
          ),
        ],
      ),
      backgroundColor: Color(0xFF1D2427),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[

              Container(
                  margin: EdgeInsets.only(top: 100, right: 10, left: 10),
                  height: 420,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
//                      image: DecorationImage(image: AssetImage('assets/images/flower.jpg'), fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 1.3,
                        sigmaY: 1.3
                    ),
                    child: Container(
                      color: Colors.white.withOpacity(0),
                    ),
                  ),
                ),

              Container(
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: 'image1',
                  child: Container(
                      child: ClipOval(
                        clipper: CircleClipper(),
                        child: Image.asset(
                          'assets/images/flower.jpg',
                          width: 150,
                          height: 160,
                          fit: BoxFit.fill,
                        ),
                      ),
                  ),
                ),
              ),
            ],

//            FloatingActionButton(
//              onPressed: () {},
//              heroTag: 'fab1',
//              child: Icon(
//                Icons.add_shopping_cart,
//                color: Colors.black87,
//              ),
//              backgroundColor: Colors.white,
//            ),

          )
        ],
      ),
    );
  }
}

class CuPaint extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final center =new Offset(size.width /2 , size.height /2);
    final radius = min(size.width, size.height) /2;
    final Paint paint = new Paint();

    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;
    paint.color = Color(0xFFFFFFFF);

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}

class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return new Rect.fromCircle(
      center: new Offset(size.width /2 , size.height /2),
      radius: min(size.width, size.height) /2
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }
}
