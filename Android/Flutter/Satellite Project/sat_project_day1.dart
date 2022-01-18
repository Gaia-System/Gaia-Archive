// Day 1: Construct frame
// The purpose of this script is providing information about satellites.
// This script isn't complete yet. I'll fill many functions, images and descriptions.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Satellites',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage()
    );
  }
}

class MyPage extends StatelessWidget {
  // const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Satellites'),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.blue,

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),

            Text('Select country',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 20.0),
            ),

            SizedBox(
              height: 30.0,
            ),

            TextButton(
              style: TextButton.styleFrom(primary: Colors.black, backgroundColor: Colors.blue[300]),
              child: Text('America'),
              onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => America())); // reaction after click the 'America' button in the drawer.
              },
            ),

            TextButton(
              style: TextButton.styleFrom(primary: Colors.black, backgroundColor: Colors.blue[300]),
              child: Text('EU'),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Europe())); // reaction after click the 'EU' button in the drawer.
              },
            ),

            TextButton(
              style: TextButton.styleFrom(primary: Colors.black, backgroundColor: Colors.blue[300]),
              child: Text('Japan'),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Japan()));
              },
            ),

            TextButton(
              style: TextButton.styleFrom(primary: Colors.black, backgroundColor: Colors.blue[300]),
              child: Text('Korea'),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Korea()));
              },
            ),

          ],
        )
      ),

      );
  }
}

// The Information of American Satellites
class America extends StatelessWidget {
  // const America({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('America Satellites'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/SSB.png') // the image file path code, and SSB.png is 'Star Spangled Banner' image.
            )
          ],
        ),
      ),
    );
  }
}

//The Information of European Satellites
class Europe extends StatelessWidget {
  // const America({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('European Satellites'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/EU.png') // the image file path, EU.png is flag of 'European Union'.
            )
          ],
        ),
      ),
    );
  }
}

// The Information of Japanese Satellites
// add the image of 'Hinomaru'(Japanese flag)
class Japan extends StatelessWidget {
  // const America({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Japanese Satellites'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}

// The Information of Korean Satellites
// add the image of 'Taegeukgi'(Korean flag)
class Korea extends StatelessWidget {
  // const America({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Korean Satellites'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
