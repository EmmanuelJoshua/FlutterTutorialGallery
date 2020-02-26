import 'package:flutter/material.dart';

class MakeRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}
//34
class MakeItRainState extends State<MakeRain> {
  int _money = 0;

  void _makemoney() {
    setState(() {
      _money = _money + 100;
    });
    print('$_money');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Make it rain!'),
        backgroundColor: Color.fromRGBO(22, 41, 47, 1),
      ),
      backgroundColor: Color.fromRGBO(18, 34, 36, 1),
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.monetization_on,
              size: 140.0,
              color: Colors.white,
            ),
            new Text(
              '\$$_money',
              style: new TextStyle(
                  color: _money > 2000 ? Colors.white : Colors.white70,
                  fontSize: 25.0),
            ),
            new RaisedButton(
              color: Color.fromRGBO(22, 41, 47, 1),
              padding: EdgeInsets.all(10.0),
              onPressed: _makemoney,
              child: new Text(
                'Get Money',
                style: new TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
