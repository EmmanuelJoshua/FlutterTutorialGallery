import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  createState() => BMIState();
}

class BMIState extends State<BMI> {
  bool isFavorited = true;

  void toggleFavorite() {
    setState(() {
      if (isFavorited) {
        isFavorited = false;
        debugPrint('$isFavorited');
      } else {
        isFavorited = true;
        debugPrint('$isFavorited');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF1B194B),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 250,
            height: 300,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xFF100E3D),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/cover.jpg',
                    width: 249,
                    height: 220,
                    fit: BoxFit.fill,
                  ),
                  ListTile(
                    title: Text('Confessions',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'PTsans',
                            fontWeight: FontWeight.w500)),
                    subtitle: Text('Artist - Logic',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            fontFamily: 'PTsans',
                            fontWeight: FontWeight.w100)),
                    trailing: IconButton(
                      onPressed: toggleFavorite,
                      icon: (isFavorited
                          ? Icon(Icons.favorite)
                          : Icon(Icons.favorite_border)),
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
