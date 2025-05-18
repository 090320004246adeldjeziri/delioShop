import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment_tastfood/models/shop.dart';
import 'package:state_managment_tastfood/pages/cart.dart';
import 'package:state_managment_tastfood/pages/fav_page.dart';
import 'package:state_managment_tastfood/pages/introPage.dart';
import 'package:state_managment_tastfood/pages/shop.dart';
import 'package:state_managment_tastfood/themes/lightMode.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => Shop()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Managment',
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        'introPage': (context) => IntroPage(),
        'shop': (context) => ShopPage(),
        'cart': (context) => const CartPage(),
        'fav_page': (context) => FavoriteProductPage()
      },
    );
  }
}
