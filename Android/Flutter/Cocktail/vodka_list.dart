import 'package:flutter/material.dart';

class ScreenVodka extends StatelessWidget {
  const ScreenVodka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vodka List'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            SizedBox(
              child: TextButton(
                child: Text('View cocktail recipe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onPressed: () {
                  Navigator.pushNamed(context, '/whicock');
                },
              ),
            ),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/vodka/absol_blue.png'),
                  width: 200,
                  height: 200,),
                Column(
                  children: <Widget> [
                    SizedBox(child: Text('whisky description')),
                  ],
                )
              ],
            ),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/vodka/ciroc.png'),
                  width: 200,
                  height: 200,),
                Column(
                  children: <Widget> [
                    SizedBox(child: Text('whisky description')),
                  ],
                )
              ],
            ),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/vodka/danzka.png'),
                  width: 200,
                  height: 200,),
                Column(
                  children: <Widget> [
                    SizedBox(child: Text('whisky description')),
                  ],
                )
              ],
            ),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/vodka/skyy.png'),
                  width: 200,
                  height: 200,),
                Column(
                  children: <Widget> [
                    SizedBox(child: Text('whisky description')),
                  ],
                )
              ],
            ),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/vodka/sobieski.png'),
                  width: 200,
                  height: 200,),
                Column(
                  children: <Widget> [
                    SizedBox(child: Text('whisky description')),
                  ],
                )
              ],
            ),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/vodka/russian_std.png'),
                  width: 200,
                  height: 200,),
                Column(
                  children: <Widget> [
                    SizedBox(child: Text('whisky description')),
                  ],
                )
              ],
            ),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/vodka/smir_red.png'),
                  width: 200,
                  height: 200,),
                Column(
                  children: <Widget> [
                    SizedBox(child: Text('whisky description')),
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
