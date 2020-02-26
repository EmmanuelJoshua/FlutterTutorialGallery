import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.deepOrange,
      alignment: Alignment.center,

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Item 1", textDirection: TextDirection.ltr,
            style: new TextStyle(fontSize: 20),),
          new Text("Item 2", textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 20)),
          new Text("Item 3", textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 20)),

        ],
      )


//      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          new Text("Hello, world",
//              textDirection: TextDirection.ltr,
//              style: new TextStyle(
//                  color: Colors.white,
//                  fontWeight: FontWeight.w500,
//                  fontSize: 30.5)),
//        ],
//      ),
    );
  }
}
