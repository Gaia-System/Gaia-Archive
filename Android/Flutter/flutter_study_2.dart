// Day 2: Snack Bar

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  // const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: TextButton( // Originally, I tried to use the FlatButton widget, but that had been deprecated. So I used the TextButton widget.
                child: Text(
                  'Show me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(SnackBar(content: Text('Hello')));
                    // Actually, the showSnackBar had been deprecated, but I can't find the alternative methods. So I'll search other good ways.
                    // The context should be named ctx cuz ctx is used as context of Builder widget.
                    // Scaffold.of(context) will return and find the nearst Scaffold widget with its context.
                    // Maybe the script will make an error that "Scaffold.of() called with a context that does not contain a Scaffold.", if didn't use Builder widget.
                },
              ),
            );
          },
        ));

    
//---------- Before construct Builder widget ----------
    
//body: Center(
// child: TextButton(
//   child: Text('Show me',
//   style: TextStyle(
//     color:Colors.white,
//   ),
//   ),
//   style: TextButton.styleFrom(backgroundColor: Colors.red),
//   onPressed: (){
//     Scaffold.of(context).showSnackBar(SnackBar(content: Text('Hello')));
    
    // Scaffold.of(context)??? ?????? ????????? context?????? ?????? ??????????????? ?????? ????????? Scaffold??? ????????? ?????? -> Something.of(context)
    // Scaffold.of(context)??? MyPage??? ????????? context??? widget tree??? MyPage?????? ?????? widget?????? Scaffold??? ?????????.
    // ????????? "Scaffold.of() called with a context that does not contain a Scaffold." ????????? ????????????. -> Builder widget ??????
