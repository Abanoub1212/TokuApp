import 'package:flutter/material.dart';
import 'Screens/Home_Page.dart';
void main() {
  runApp(TokuApp());
}
class TokuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



