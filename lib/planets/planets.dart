import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Planets extends StatefulWidget {
  createState() => PlanetsState();
}

class PlanetsState extends State<Planets> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
        title: Text('Planets',
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
      backgroundColor: Color(0xFF3F3762),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 45, top: 9),
                height: 76,
                color: Colors.transparent,
                width: double.infinity,
                child: Card(
                  color: Color(0xFF534F8A),
                  elevation: 2,
                  margin: EdgeInsets.all(0),
                ),
              ),
              Image.asset(
                'assets/images/planets/mercury.png',
                width: 95,
                height: 95,
              ),
            ],
          ),
          Card(
            //5%
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/planets/mercury.png',
                  width: 95,
                  height: 95,
                ),
                Expanded(
                    child: Column(children: <Widget>[
                  SizedBox(
                    height: 60,
                    child: ListTile(
                      title: Text('Mercury',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'PTsans',
                              fontWeight: FontWeight.w500)),
                      subtitle: Text('The swiftest planet',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontFamily: 'PTsans',
                              fontWeight: FontWeight.w100)),
                      trailing: new IconButton(
                          icon: Icon(Icons.beenhere),
                          color: Colors.white,
                          onPressed: () => debugPrint('Hello')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13, top: 5),
                    child: LinearPercentIndicator(
                      width: 165,
                      animation: true,
                      lineHeight: 13.0,
                      animationDuration: 2000,
                      percent: 0.05,
                      center: Text(
                        "5% Oxygen",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'PTsans',
                            fontWeight: FontWeight.w100),
                      ),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Colors.white,
                      backgroundColor: Color(0xFF3F3762),
                    ),
                  )
                ])),
              ],
            ),
          ),
          Card(
            //0%
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(children: <Widget>[
              Image.asset(
                'assets/images/planets/venus.png',
                width: 95,
                height: 95,
              ),
              Expanded(
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 60,
                    child: ListTile(
                      title: Text('Venus',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'PTsans',
                              fontWeight: FontWeight.w500)),
                      subtitle: Text('Planetary Hot Spot',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontFamily: 'PTsans',
                              fontWeight: FontWeight.w100)),
                      trailing: new IconButton(
                          icon: Icon(Icons.beenhere),
                          color: Colors.white,
                          onPressed: () => debugPrint('Hello')),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12, top: 5),
                        child: LinearPercentIndicator(
                          width: 165,
                          animation: true,
                          lineHeight: 13.0,
                          animationDuration: 2000,
                          percent: 0.01,
                          center: Text(
                            "1% Oxygen",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100),
                          ),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.white,
                          backgroundColor: Color(0xFF3F3762),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ]),
          ),
          Card(
            //21%
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(children: <Widget>[
              Image.asset(
                'assets/images/planets/earth.png',
                width: 95,
                height: 95,
              ),
              Expanded(
                child: Column(children: <Widget>[
                  SizedBox(
                      height: 60,
                      child: ListTile(
                        title: Text('Earth',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w500)),
                        subtitle: Text('Our home planet',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100)),
                        trailing: new IconButton(
                            icon: Icon(Icons.beenhere),
                            color: Colors.white,
                            onPressed: () => debugPrint('Hello')),
                      )),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12, top: 5),
                        child: LinearPercentIndicator(
                          width: 165,
                          animation: true,
                          lineHeight: 13.0,
                          animationDuration: 2000,
                          percent: 0.21,
                          center: Text(
                            "21% Oxygen",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100),
                          ),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.white,
                          backgroundColor: Color(0xFF3F3762),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ]),
          ),
          Card(
            //3%
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/planets/mars.png',
                  width: 90,
                  height: 90,
                ),
                Expanded(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                      child: ListTile(
                        title: Text('Mars',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w500)),
                        subtitle: Text('The red planet',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100)),
                        trailing: new IconButton(
                            icon: Icon(Icons.beenhere),
                            color: Colors.white,
                            onPressed: () => debugPrint('Hello')),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: LinearPercentIndicator(
                            width: 165,
                            animation: true,
                            lineHeight: 13.0,
                            animationDuration: 2000,
                            percent: 0.03,
                            center: Text(
                              "3% Oxygen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'PTsans',
                                  fontWeight: FontWeight.w100),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.white,
                            backgroundColor: Color(0xFF3F3762),
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ],
            ),
          ),
          Card(
            //0%
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/planets/jupiter.png',
                  width: 90,
                  height: 90,
                ),
                Expanded(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                      child: ListTile(
                        title: Text('Jupiter',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w500)),
                        subtitle: Text('The grandest planet',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100)),
                        trailing: new IconButton(
                            icon: Icon(Icons.beenhere),
                            color: Colors.white,
                            onPressed: () => debugPrint('Hello')),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: LinearPercentIndicator(
                            width: 165,
                            animation: true,
                            lineHeight: 13.0,
                            animationDuration: 2000,
                            percent: 0.18,
                            center: Text(
                              "18% Oxygen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'PTsans',
                                  fontWeight: FontWeight.w100),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.white,
                            backgroundColor: Color(0xFF3F3762),
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ],
            ),
          ),
          Card(
            //0%
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/planets/saturn.png',
                  width: 90,
                  height: 90,
                ),
                Expanded(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                      child: ListTile(
                        title: Text('Saturn',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w500)),
                        subtitle: Text('Jewel of our Solar System',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100)),
                        trailing: new IconButton(
                            icon: Icon(Icons.beenhere),
                            color: Colors.white,
                            onPressed: () => debugPrint('Hello')),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: LinearPercentIndicator(
                            width: 165,
                            animation: true,
                            lineHeight: 13.0,
                            animationDuration: 2000,
                            percent: 0.15,
                            center: Text(
                              "15% Oxygen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'PTsans',
                                  fontWeight: FontWeight.w100),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.white,
                            backgroundColor: Color(0xFF3F3762),
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ],
            ),
          ),
          Card(
            //0%
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/planets/uranus.png',
                  width: 90,
                  height: 90,
                ),
                Expanded(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                      child: ListTile(
                        title: Text('Uranus',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w500)),
                        subtitle: Text('The sideways planet',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100)),
                        trailing: new IconButton(
                            icon: Icon(Icons.beenhere),
                            color: Colors.white,
                            onPressed: () => debugPrint('Hello')),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: LinearPercentIndicator(
                            width: 165,
                            animation: true,
                            lineHeight: 13.0,
                            animationDuration: 2000,
                            percent: 0.02,
                            center: Text(
                              "2% Oxygen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'PTsans',
                                  fontWeight: FontWeight.w100),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.white,
                            backgroundColor: Color(0xFF3F3762),
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ],
            ),
          ),
          Card(
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/planets/neptune.png',
                  width: 90,
                  height: 90,
                ),
                Expanded(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                      child: ListTile(
                        title: Text('Neptune',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w500)),
                        subtitle: Text('The windiest planet',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100)),
                        trailing: new IconButton(
                            icon: Icon(Icons.beenhere),
                            color: Colors.white,
                            onPressed: () => debugPrint('Hello')),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: LinearPercentIndicator(
                            width: 165,
                            animation: true,
                            lineHeight: 13.0,
                            animationDuration: 2000,
                            percent: 0.08,
                            center: Text(
                              "8% Oxygen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'PTsans',
                                  fontWeight: FontWeight.w100),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.white,
                            backgroundColor: Color(0xFF3F3762),
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ],
            ),
          ),
          Card(
            elevation: 0,
            color: Color(0xFF534F8A),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/planets/pluto.png',
                  width: 90,
                  height: 90,
                ),
                Expanded(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                      child: ListTile(
                        title: Text('Pluto',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w500)),
                        subtitle: Text('The dwarf planet',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontFamily: 'PTsans',
                                fontWeight: FontWeight.w100)),
                        trailing: new IconButton(
                            icon: Icon(Icons.beenhere),
                            color: Colors.white,
                            onPressed: () => debugPrint('Hello')),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: LinearPercentIndicator(
                            width: 165,
                            animation: true,
                            lineHeight: 13.0,
                            animationDuration: 2000,
                            percent: 0.10,
                            center: Text(
                              "10% Oxygen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'PTsans',
                                  fontWeight: FontWeight.w100),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.white,
                            backgroundColor: Color(0xFF3F3762),
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
