import 'package:flutter/material.dart';
import 'package:cocktail3/cocktail_home.dart';

import 'package:cocktail3/whisky_list.dart';
import 'package:cocktail3/whisky_cocktail.dart';

import 'package:cocktail3/vodka.list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cock Tales',
      initialRoute: '/home',
      routes: {
        '/home' : (context) => ScreenHome(),
        '/whisky' : (context) => ScreenWhisky(),
        '/vodka' : (context) => ScreenVodka(),
        // '/gin' : (context) => ScreenGin(),
        // '/rum' : (context) => ScreenRum(),
        // '/brandy' : (context) => ScreenBrandy(),
        // '/tequila' : (context) => ScreenTequila(),
        // '/liquor' : (context) => ScreenLiquor(),

        '/whicock' : (context) => ScreenWhiskyCocktail(),
        // '/vodcock' : (context) => ScreenVodkaCocktail(),
        // '/gincock' : (context) => ScreenGinCocktail(),
        // '/rumcock' : (context) => ScreenRumCocktail(),
        // '/bracock' : (context) => ScreenBrandyCocktail(),
        // '/teqcock' : (context) => ScreenTequilaCocktail(),
        // '/liqcock' : (context) => ScreenLiquorCocktail(),
      },
    );
  }
}
