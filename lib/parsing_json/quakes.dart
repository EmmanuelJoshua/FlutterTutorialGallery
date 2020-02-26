import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Quakes extends StatefulWidget {
  createState() => QuakesState();
}

class QuakesState extends State<Quakes> {
  Map data;
  List features;

  void method() async {
    data = await getQuakes();

    features = data['features'];

//    debugPrint(features[0]['properties']['place'].toString());
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      method();
    });
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: Icon(
            Icons.sort,
            color: Colors.white,
            size: 25,
          ),
          onPressed: null,
        ),
        title: new Text('EarthQuakes',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontFamily: 'PTsans')),
        backgroundColor: Color(0xFF373155),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: features.length,
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (BuildContext context, int position) {
                if (position.isOdd) return new Divider();

                var time = features[position]['properties']['time'];

                DateTime date = new DateTime.fromMillisecondsSinceEpoch(time, isUtc: true);

                var format = new DateFormat.yMMMMd('en_us');

                var dateString = format.format(date);

                return new ListTile(
                  title: new Text('$dateString',
                      style: TextStyle(
                          color: Color(0xFF373155),
                          fontSize: 18,
                          fontFamily: 'PTsans')),
                  subtitle: new Text('${features[position]['properties']['place']}',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'PTsans',
                          fontStyle: FontStyle.italic)),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFF373155),
                    child: new Text('${features[position]['properties']['mag']}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'PTsans')),
                  ),
                );
              })
      ),
    );
  }
}

Future<Map> getQuakes() async {
  String apiUrl =
      'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson';

  http.Response response = await http.get(apiUrl);

  return json.decode(response.body);
}
