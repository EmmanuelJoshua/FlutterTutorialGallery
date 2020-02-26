import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class PlanetX extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PlanetXState();
  }
}

class PlanetXState extends State<PlanetX> {
  String radioValue = "";
  String formattedString = "";
  double weightOnX = 0.0;
  final TextEditingController _weight = new TextEditingController();

  void handleRadioChange(String value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case "Pluto":
          weightOnX = calculateWeight(_weight.text, 0.06);
          formattedString = "Your weight on Pluto is " +
              weightOnX.toStringAsFixed(1) +
              " lbs";
          break;
        case "Mars":
          weightOnX = calculateWeight(_weight.text, 0.38);
          formattedString = "Your weight on Mars is " +
              weightOnX.toStringAsFixed(1) +
              " lbs";
          break;
        case "Venus":
          weightOnX = calculateWeight(_weight.text, 0.91);
          formattedString = "Your weight on Venus is " +
              weightOnX.toStringAsFixed(1) +
              " lbs";
          break;
      }
    });
  }

  double calculateWeight(String weight, double multiplier) {
    double val;
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      val = int.parse(weight) * multiplier;
      return val;
    } else {
      val = 180 * 0.38;
      return val;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF1E3A4A),
        title: new Text(
          'Weight On Planet X',
          style: new TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'PTsans'),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF4481A1),
      body: new Container(
          alignment: Alignment.center,
          child: new ListView(children: <Widget>[
            new Image.asset(
              'assets/images/planet.png',
              width: 130.0,
              height: 130.0,
            ),
            new Container(
                margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: new Theme(
                    data: Theme.of(context).copyWith(
                        primaryColor: Colors.white,
                        inputDecorationTheme: new InputDecorationTheme(
                          hoverColor: Colors.white,
                          enabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white)),
                        )),
                    child: new TextField(
                      keyboardType: TextInputType.number,
                      controller: _weight,
                      decoration: new InputDecoration(
                        labelText: 'Weight on earth',
                        hintText: 'In Pounds',
                        labelStyle: new TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'PTsans'),
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.album,
                          color: Colors.white,
                        ),
                      ),
                    ))),
            new RadioButtonGroup(
              activeColor: Colors.white,
              orientation: GroupedButtonsOrientation.VERTICAL,
              labelStyle: new TextStyle(
                  color: Colors.white, fontSize: 16, fontFamily: 'PTsans'),
              labels: <String>[
                "Pluto",
                "Mars",
                "Venus",
              ],
              onSelected: handleRadioChange,
            ),
//            new Container(
//              child: new Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  new Radio<int>(
//                      activeColor: Colors.brown,
//                      value: 0,
//                      groupValue: radioValue,
//                      onChanged: handleRadioChange),
//                  new Text("Pluto",
//                      style: new TextStyle(
//                          color: Colors.white,
//                          fontSize: 16,
//                          fontFamily: 'PTsans')),
//                  new Radio<int>(
//                      activeColor: Colors.red,
//                      value: 1,
//                      groupValue: radioValue,
//                      onChanged: handleRadioChange),
//                  new Text("Mars",
//                      style: new TextStyle(
//                          color: Colors.white,
//                          fontSize: 16,
//                          fontFamily: 'PTsans')),
//                  new Radio<int>(
//                      activeColor: Colors.orangeAccent,
//                      value: 2,
//                      groupValue: radioValue,
//                      onChanged: handleRadioChange),
//                  new Text("Venus",
//                      style: new TextStyle(
//                          color: Colors.white,
//                          fontSize: 16,
//                          fontFamily: 'PTsans')),
//                ],
//              ),
//            ),
            new Padding(padding: new EdgeInsets.all(5.6)),
            new Center(
              child: new Text(
                  _weight.text.isEmpty
                      ? "Please enter weight"
                      : "$formattedString",
                  style: new TextStyle(
                      color: Colors.white, fontSize: 19, fontFamily: 'PTsans')),
            ),
          ])),
    );
  }
}
