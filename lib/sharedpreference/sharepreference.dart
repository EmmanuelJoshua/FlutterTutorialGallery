import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  @override
  _SharedPrefState createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  TextEditingController text = new TextEditingController();
  String prefData = "Empty";

  @override
  void initState() {
    super.initState();

    _loadPrefData();
  }

  _loadPrefData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {
      if (preferences.getString('data') != null &&
          preferences.getString('data').isNotEmpty) {
        prefData = preferences.getString('data');
      } else {
        prefData = 'Preferences is empty';
      }
    });
  }

  saveData(String message) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('data', message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shared Preference',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20),
        children: <Widget>[
          TextField(
              controller: text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Write Something')),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          RaisedButton(
            onPressed: () {
              saveData(text.text.toString());
            },
            child: Text('Save Data'),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Text('$prefData'),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                _loadPrefData();
              });
            },
            child: Text('Show saved'),
          )
        ],
      ),
    );
  }
}
