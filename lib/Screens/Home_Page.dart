import 'package:flutter/material.dart';
import 'package:toku/Components/Catogery_Items.dart';
import 'package:toku/Screens/Numbers_page.dart';
import 'package:toku/Screens/Family_Members_Page.dart';
import 'package:toku/Screens/Colors_Page.dart';
import 'package:toku/Screens/phrases_Page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF4DA),
      appBar: AppBar(
          title: const Text("Toku"), backgroundColor: const Color(0xFF45312B)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Catogery(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: "Numbers",
            color: const Color(0xFFE99135),
          ),
          Catogery(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersPage();
              }));
            },
            text: "Family Members",
            color: const Color(0XFF588834),
          ),
          Catogery(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorPage();
              }));
            },
            text: "Colors",
            color: const Color(0XFF75369F),
          ),
          Catogery(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: "Phrases",
            color: const Color(0XFF55ABC9),
          ),
        ],
      ),
    );
  }
}
