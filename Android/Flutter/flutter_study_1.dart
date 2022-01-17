// Day 1 : Creadting Character Card

// This script is NOT used commercial
// I have studied via 코딩셰프's videos on the Youtube
// I used some images from Google
// Some annotations include Korean

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Units',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('Army'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          // widget들 가로 정렬 : crossAxisAlignment
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/infantry.png'), // Edit the pubspec.yaml before using images
                radius: 60.0, // 원의 크기 설정
                backgroundColor: Colors.amber[800],
              ),
            ),
            // Original pubspec.yaml
            // # assets:
            // #  - image/a_dot_burr.jpeg
            // #  - image/a_dot_burr.jpeg
            
            // I edited the above codes like under codes.
            // at first, deleted hash symbols and change the path to use images

            Divider(
              height: 60.0, // 분리선의 위, 아래 간격의 합이 60.0
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),

            Text('NAME',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
            ),

            SizedBox(
              height: 10.0 // widget간의 세로 간격
            ),

            Text('Infantry',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Text('Unit Power Rank',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(
                height: 10.0 // widget간의 세로 간격
            ),

            Text('Lieutenant',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),

                SizedBox(
                  width: 10.0,
                ),

                Text('Speedy March',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                ),

                SizedBox(
                  width: 10.0,
                ),

                Text('Speed +10',
                style: TextStyle(
                  fontSize: 12.0,
                  letterSpacing: 1.0
                ),
                ),

              ],
            ),

            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),

                SizedBox(
                  width: 10.0,
                ),

                Text('Precise Attack',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),

                SizedBox(
                  width: 10.0
                ),

                Text('Damage +10',
                style: TextStyle(
                  fontSize: 12.0,
                  letterSpacing: 1.0
                ),
                ),

              ],
            ),

            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),

                SizedBox(
                  width: 10.0,
                ),

                Text('Smite',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),

                SizedBox(
                  width: 10.0,
                ),

                Text('Additional damage +10 to enermy infantry',
                style: TextStyle(
                  fontSize: 12.0,
                  letterSpacing: 1.0
                ),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/soldier.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
