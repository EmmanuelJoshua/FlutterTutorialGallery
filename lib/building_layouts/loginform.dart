import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _username = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  String _user = "";

  void _clearDetails() {
    setState(() {
      _username.clear();
      _password.clear();
    });
  }

  void _showDetails() {
    setState(() {
      if (_username.text.isNotEmpty && _password.text.isNotEmpty) {
        _user = _username.text;
      } else {
        _user = 'Nothing!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: new Text('Login'),
        backgroundColor: new Color(0xFF222222),
      ),
      backgroundColor: new Color(0xFF222222),
      body: new Container(
          alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Image.asset(
                'assets/images/ps3.png',
                width: 90.0,
                height: 90.0,
              ),
              new Text(
                'PlayStation',
                style: new TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'PTsans'),
              ),
              new Container(
                margin: EdgeInsets.all(20.0),
                width: 400,
                child: new Column(
                  children: <Widget>[
                    new Container(
                        margin: EdgeInsets.only(bottom: 20.0),
                        child: new Theme(
                            data: Theme.of(context).copyWith(
                                primaryColor: Colors.white,
                                inputDecorationTheme: new InputDecorationTheme(
                                  hoverColor: Colors.white,
                                  enabledBorder: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.white)),
                                )),
                            child: new TextField(
                              controller: _username,
                              decoration: new InputDecoration(
                                labelText: 'Username',
                                labelStyle: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'PTsans'),
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(
                                  Icons.supervised_user_circle,
                                  color: Colors.white,
                                ),
                              ),
                            ))),
                    new Container(
                        child: new Theme(
                            data: Theme.of(context).copyWith(
                                primaryColor: Colors.white,
                                inputDecorationTheme: new InputDecorationTheme(
                                  hoverColor: Colors.white,
                                  enabledBorder: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.white)),
                                )),
                            child: new TextField(
                              controller: _password,
                              obscureText: true,
                              decoration: new InputDecoration(
                                labelText: 'Password',
                                labelStyle: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'PTsans'),
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                              ),
                            ))),
                    new Container(
                      margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new RaisedButton(
                            color: Color(0xFFFFFFFF),
                            padding: EdgeInsets.all(10.0),
                            onPressed: _showDetails,
                            child: new Text(
                              'Login',
                              style: new TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 17,
                                  fontFamily: 'PTsans'),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          new RaisedButton(
                            color: Color(0xFFFFFFFF),
                            padding: EdgeInsets.all(10.0),
                            onPressed: _clearDetails,
                            child: new Text(
                              'Clear',
                              style: new TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 17,
                                  fontFamily: 'PTsans'),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          )
                        ],
                      ),
                    ),
                    new Text(
                      'Welcome, $_user',
                      style: new TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 17,
                          fontFamily: 'PTsans'),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
