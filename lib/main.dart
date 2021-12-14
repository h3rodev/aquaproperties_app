import 'package:aquaproperties_app/pages/home_page.dart';
import 'package:aquaproperties_app/pages/property_page.dart';

// import 'package:awesome_app/user_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'AQUA Properties',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/properties-for-sale': (context) => const PropertyPage(),
        '/properties-for-rent': (context) => const PropertyPage(),
        '/offplan': (context) => const PropertyPage(),
      },
    ),
  );
}
