import 'package:flutter/material.dart';

class Detector extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white12,
        title: new Text('Gestures'),
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }

}

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(

      onLongPress: (){
        final snackbar = new SnackBar(content: new Text('Wow'));

        Scaffold.of(context).showSnackBar(snackbar);
      },

      child: new Container(
        padding: EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(5.6)
        ),
        child: new Text('Press Here'),
      ),
    );
  }

}