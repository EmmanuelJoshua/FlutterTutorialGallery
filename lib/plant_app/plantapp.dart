import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bmi_app/plant_app/displaypage.dart';

class PlantApp extends StatefulWidget {
  @override
  _PlantAppState createState() => _PlantAppState();
}

class _PlantAppState extends State<PlantApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort),
            color: Colors.black54,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              color: Colors.black54,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.only(left: 18, right: 18),
          children: <Widget>[
            Container(
              child: Text('Top Picks',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 28,
                      fontFamily: 'Montserrat')),
            ),
            InkWell(
              onTap: (){
                var router = MaterialPageRoute(builder: (BuildContext context) => DisplayPage());

                Navigator.of(context).push(router);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 300,
                child: Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Stack(
                      children: <Widget>[
                        Hero(
                          tag: 'image1',
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            child: Image.asset(
                              'assets/images/flower.jpg',
                              width: double.infinity,
                              height: 292,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 15),
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25))),
//                          margin: EdgeInsets.only(top: 10, right: 10),
                                child: RichText(
                                  text: TextSpan(text: '', children: [
                                    new TextSpan(children: [
                                      TextSpan(
                                          text: 'From\n',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: 'MontserratLight')),
                                      TextSpan(
                                          text: '\$25 - \$30',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat')),
                                    ])
                                  ]),
                                )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 22, right: 10),
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            onPressed: (){},
                            heroTag: 'fab1',
                            child: Icon(Icons.add_shopping_cart,color: Colors.black87,),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 15, left: 8),
                child: RichText(
                  text: TextSpan(text: '', children: [
                    new TextSpan(children: [
                      TextSpan(
                          text: 'Description\n',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontFamily: 'Montserrat')),
                      TextSpan(
                          text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\n',
                          style: TextStyle(

                              color: Colors.black54,
                              fontSize: 14,
                              fontFamily: 'Montserrat')),
                    ])
                  ]),
                ),
            ),
            Divider(height: 0.1,),
            Container(
              margin: EdgeInsets.only( left: 8),
              child: RichText(
                text: TextSpan(text: '', children: [
                  new TextSpan(children: [
                    TextSpan(
                        text: '\nAvailable Qty: ',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat')),
                    TextSpan(
                        text: '6',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PTSans')),
                  ])
                ]),
              ),
            ),

          ],
        ));
  }
}
