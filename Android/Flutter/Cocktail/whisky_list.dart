import 'package:flutter/material.dart';

class ScreenWhisky extends StatelessWidget {
  const ScreenWhisky({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whisky List'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            SizedBox(
              child: TextButton(
                child: Text('View cocktail recipe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                onPressed: () {
                  Navigator.pushNamed(context, '/whicock');
                },
              ),
            ),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/whisky/jack_no7.png'),
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
                  child: Image.asset('assets/whisky/makers_mark.png'),
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
                  child: Image.asset('assets/whisky/wild_k8.png'),
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
                  child: Image.asset('assets/whisky/buffalo.png'),
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
                  child: Image.asset('assets/whisky/jack_honey.png'),
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
                  child: Image.asset('assets/whisky/jimbeam.png'),
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
                  child: Image.asset('assets/whisky/ballan_finest.png'),
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
