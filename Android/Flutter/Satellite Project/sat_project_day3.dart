// Comprehensive controll script
import 'package:flutter/material.dart';
import 'package:my_sat_proj/satproj_am.dart';
import 'package:my_sat_proj/satproj_eu.dart';
import 'package:my_sat_proj/satproj_ja.dart';
import 'package:my_sat_proj/satproj_ko.dart';
import 'package:my_sat_proj/satproj_home2.dart';


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
        '/init' : (context) => ScreenHome2(),
        '/am' : (context) => ScreenAm(),
        '/eu' : (context) => ScreenEu(),
        '/ja' : (context) => ScreenJa(),
        '/ko' : (context) => ScreenKo()
      },
    );
  }
}

// I made ScreenHome2 using Listview.
// satproj_home2.dart
import 'package:flutter/material.dart';

class ScreenHome2 extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

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
          ListTile(
            leading: Image.asset('assets/SSB.png'),
            title: Text("America"),
            onTap: () {
              Navigator.pushNamed(context, '/am');
            }),

          SizedBox(height: 30.0),

          ListTile(
              leading: Image.asset('assets/EU.png'),
              title: Text("Europe"),
              onTap: () {
                Navigator.pushNamed(context, '/eu');
              }),

          SizedBox(height: 30.0),

          ListTile(
              leading: Image.asset('assets/HNM.png'),
              title: Text("Japan"),
              onTap: () {
                Navigator.pushNamed(context, '/ja');
              }),

          SizedBox(height: 30.0),

          ListTile(
              leading: Image.asset('assets/TGG.png'),
              title: Text("Korea"),
              onTap: () {
                Navigator.pushNamed(context, '/ko');
              }),

        ],
      )
    );
  }
}

// this script was written via GridView widget in order to include an image, brief descriptions and buttons.
// All the country has same frame, so I upload case of America satellites representatively.
// satproj_am.dart
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
      body: GridView.count(
        mainAxisSpacing: 10.0, // main axis(vertical axis) spacing each grid.
        crossAxisSpacing: 4.0, // cross axis(horizontal axis) spacing asch grid.
        crossAxisCount: 3, // 3 grids in a row
        children: <Widget>[

            Container(child: Image.asset('assets/Landsat.png')), // A Landsat satellite image.
          // Landsat satellites are optical

            Container(child: Text("The first Lansat satellite was launched 23 July 1972. this day, 8 optical Landsat satellites had been lauched.")), // The satellite explanations.

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: Text("View more Info"), // The button is that it go to the official homepage.
                    onPressed: () {print("https://landsat.gsfc.nasa.gov/");},
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey)
                  ),
                  ElevatedButton(child:Text('Data Download'), // The button is that it go to database for downloading.
                    onPressed: () {print('https://earthexplorer.usgs.gov/');},
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  )
                ],
              ),
            ),

          Container(child: Image.asset('assets/NISAR.jpg')), // A NISAR satellite image.

          Container(child: Text("NISAR is schduled to launch 2023.")), //// The satellite explanations.


          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    child: Text("View more Info"),
                    onPressed: () {print("https://nisar.jpl.nasa.gov/mission/quick-facts/");},
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey)
                ),
                // NISAR isn't launched when I write this script (22 Jan 2022), so the download button is unusible.
                // ElevatedButton(child:Text('Data Download'),
                //   onPressed: () {print('Download');},
                //   style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                // )
              ],
            ),
          ),


        ]
      )
    );
  }
}
