import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileIO extends StatefulWidget {
  @override
  _FileIOState createState() => _FileIOState();
}

class _FileIOState extends State<FileIO> {
  TextEditingController text = new TextEditingController();
  String textMessage = 'Text should be here.';

  void read() async{
    var data = await readData();

    if(data != null){
      String message = await readData();

      textMessage = message;
    }else{
      textMessage = 'nothing found';
    }
  }

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
              writeData(text.text);
            },
            child: Text('Save Data'),
          ),
          Padding(padding: EdgeInsets.all(10),),
          Text(
              '$textMessage'
          ),
          Padding(padding: EdgeInsets.all(10),),
          RaisedButton(
            onPressed: () {
              setState(() {
                read();
              });
            },
            child: Text('Show saved'),
          )
        ],
      ),
    );
  }

}

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;

    return new File('$path/data.txt');
  }

  Future<File> writeData(String message) async {
    final file = await _localFile;

    return file.writeAsString('$message');
  }

  Future<String> readData() async {
    try{
      final file = await _localFile;

      String data = await file.readAsString();

      return data;
    }catch(e){
      return 'nothing seen';
    }
  }

