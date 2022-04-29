import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Listview2Screen(),
      initialRoute: 'home',
      routes: {
        'home'      : ( BuildContext context ) => const HomeScreen(),
        'listview1' : ( BuildContext context ) => const Listview1Screen(),
        'listview2' : ( BuildContext context ) => const Listview2Screen(),
        'card'      : ( BuildContext context ) => const CardScreen(),
        'alerd'     : ( BuildContext context ) => const AlertScreen(),
      },
    );
  }
}