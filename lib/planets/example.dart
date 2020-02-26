import 'package:flutter/material.dart';
import 'package:expandable_card/expandable_card.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: new IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
              size: 25,
            ),
            onPressed: null,
          ),
          backgroundColor: Color(0xFF373155),
          centerTitle: true,
          title: Text('Player',
              style: TextStyle(
                  color: Colors.white, fontSize: 23, fontFamily: 'PTsans')),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null,
            )
          ],
        ),
        body: ExpandableCardPage(
          page: Center(),
          expandableCard: ExpandableCard(
            hasRoundedCorners: true,
            hasHandle: false,
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => debugPrint('Previous'),
                      icon: Icon(Icons.skip_previous),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () => debugPrint('Previous'),
                      icon: Icon(
                        Icons.play_arrow,
                      ),
                      color: Colors.white,
                      iconSize: 50.0,
                    ),
                    IconButton(
                      onPressed: () => debugPrint('Previous'),
                      icon: Icon(Icons.skip_next),
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
