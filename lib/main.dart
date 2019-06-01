import 'package:flutter/material.dart';
import 'package:ingilizce_turkce_sozluk/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sozluk',
      home: MyHomePage(),
    );
  }
}
