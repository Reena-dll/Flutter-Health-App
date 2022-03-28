import 'package:flutter/material.dart';
import 'veri_giris.dart';
import 'home_page.dart';


void main() => runApp(BKIhesap());

class BKIhesap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: Home_Page(),
    );
  }
}
