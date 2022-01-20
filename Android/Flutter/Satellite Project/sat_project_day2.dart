// I retried to write this code without 'Drawer' widget.
// this script will be filled the plenty of information about Satellites. it has just an one name of satellite.
// final purpose is that it can access each homepage via links.

// A comprehensive control script
import 'package:flutter/material.dart';
import 'package:my_sat_proj/satproj_home.dart';
import 'package:my_sat_proj/satproj_am.dart';
import 'package:my_sat_proj/sarproj_eu.dart';
import 'package:my_sat_proj/satproj_ja.dart';
import 'package:my_sat_proj/satproj_ko.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Satellites',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/init',
      routes: {
        '/init' : (context) => ScreenHome(),
        '/am' : (context) => ScreenAm(),
        '/eu' : (context) => ScreenEu(),
        '/ja' : (context) => ScreenJa(),
        '/ko' : (context) => ScreenKo()
      },
    );
  }
}

//Home screen script
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  // const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Satellites'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 500.0),
          children: <Widget>[
            SizedBox(
              width: 50.0,
              height: 100.0,
              child: ElevatedButton(
                child: Image.asset('assets/SSB.png'),
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: (){
                  Navigator.pushNamed(context, '/am');
                }),
            ),

            SizedBox(height: 30.0),

            SizedBox(
              width: 50.0,
              height: 100.0,
              child: ElevatedButton(
                  child: Image.asset('assets/EU.png'),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: (){
                    Navigator.pushNamed(context, '/eu');
                  }),
            ),

            SizedBox(height: 30.0),

            SizedBox(
              width: 50.0,
              height: 100.0,
              child: ElevatedButton(
                  child: Image.asset('assets/HNM.png'),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: (){
                    Navigator.pushNamed(context, '/ja');
                  }),
            ),

            SizedBox(height: 30.0),

            SizedBox(
              width: 50.0,
              height: 100.0,
              child: ElevatedButton(
                  child: Image.asset('assets/TGG.png'),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: (){
                    Navigator.pushNamed(context, '/ko');
                  }),
            ),
          ]
        ),
    );
  }
}

// 'America' button script
import 'package:flutter/material.dart';

class ScreenAm extends StatelessWidget {
  // const ScreenAm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('American Satellites'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text('Landsat')
        ],
      ),
    );
  }
}

// 'Europe' button script
import 'package:flutter/material.dart';

class ScreenEu extends StatelessWidget {
  // const ScreenAm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('European Satellites'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text('Sentinel')
        ],
      ),
    );
  }
}

// 'Japan' button script
import 'package:flutter/material.dart';

class ScreenJa extends StatelessWidget {
  // const ScreenAm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Japanese Satellites'),
          centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text('ALOS')
        ],
      ),
    );
  }
}

// 'Korea' button script
import 'package:flutter/material.dart';

class ScreenKo extends StatelessWidget {
  // const ScreenAm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Korean Satellites'),
          centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text('KOMPSAT')
        ],
      ),
    );
  }
}
