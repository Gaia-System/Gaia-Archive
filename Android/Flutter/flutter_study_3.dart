// Buttons

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons',
      home: MyButtons()
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  print('Text Button');
                },
                onLongPress: () {
                  print('text button');
                },
                child: Text(
                  'Text Button',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              style: TextButton.styleFrom(
                primary: Colors.red,
                //backgroundColor: Colors.blue // 'backgroundColor' argument changes background color on the TextButton.
              ),
            ),

            ElevatedButton(
                onPressed: () {
                  print('Elevated Bitton');
                },
                child: Text('Elevated Button'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent, // 'primary' argument changes background color on the ElevatedButton.
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))
                )
            ),

            OutlinedButton(
                onPressed: () {
                  print('Outlined Button');
                },
                child: Text('Outlined Button'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.green,
                    side: BorderSide(
                        color: Colors.black87,
                        width: 2.0
                    )
                ),
            ),

            TextButton.icon( // All the buttons can be generated with an icon.
                onPressed: () {
                  print('Icon Button');
                },
                icon: Icon(
                    Icons.home,
                    size: 30.0,
                    color: Colors.black87,
                ),
                label: Text('Go to home'),
                style: TextButton.styleFrom(
                    primary: Colors.purple
                )
            ),

            ElevatedButton.icon(
                // onPressed: () {
                //   print('Icon Button');
                // },
              onPressed: null, // 'onPressed: null' makes a button unusible.
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
                label: Text('Go to home'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    // minimumSize: Size(200, 50)
                    onSurface: Colors.pink // Can change the color on unusible bitton.
                )
              ),

            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20.0),
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('TextButton')
                ),

                ElevatedButton(
                    onPressed: () {},
                    child: Text('ElevatedButton')
                ),
              ],
            ) // ButtonBar will array many buttons, it can automatically adjust row or column at the space.

          ],
        ),
      )
    );
  }
}
