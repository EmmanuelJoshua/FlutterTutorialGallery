import 'package:flutter/material.dart';

class Scafolds extends StatelessWidget {
  var num = 0;

  void _cupsdrank(){
    num++;
    debugPrint("$num number of cups drank");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: new Text("Spark App"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () => debugPrint("Search")),
        ],
      ),

      backgroundColor: Colors.white,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new InkWell(
              child: new Icon(
                Icons.opacity,
                color: Colors.purple,
                size: 100,
              ),
              onTap: _cupsdrank,
            ),
            new Text(
              "Stay Hydrated",
              style: new TextStyle(fontSize: 20, color: Colors.purple),
            )
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.purpleAccent,
          tooltip: 'We going up!',
          child: new Icon(Icons.call),
      ),

      bottomNavigationBar: new BottomNavigationBar(
          selectedFontSize: 15,
          selectedItemColor: Colors.purple,
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.dashboard), title: new Text("Dashboard")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.search), title: new Text("Search")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.settings), title: new Text("Settings"))
          ]),
    );
  }
}
