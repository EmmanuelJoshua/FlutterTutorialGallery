import 'package:flutter/material.dart';

class SharedPref extends StatefulWidget {
  @override
  _SharedPrefState createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {

  TextEditingController text = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read/Write', style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      body: ListView(
        padding: EdgeInsets.only(top: 20),
        children: <Widget>[
          TextField(
              controller: text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Write Something'
              )
          ),
          Padding(padding: EdgeInsets.all(10),),
          RaisedButton(
            onPressed: () {

            },
            child: Text('Save Data'),
          ),
          Padding(padding: EdgeInsets.all(10),),
          Text(
              ''
          ),
          Padding(padding: EdgeInsets.all(10),),
          RaisedButton(
            onPressed: () {
              setState(() {

              });
            },
            child: Text('Show saved'),
          )
        ],
      ),
    );
  }
}
