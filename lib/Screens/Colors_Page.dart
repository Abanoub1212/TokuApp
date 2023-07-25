import 'package:flutter/material.dart';
import 'package:toku/Models/Items.dart';
import 'package:toku/Components/ListItems.dart';
class ColorPage extends StatelessWidget {
  final List<Items> color = const [
    Items(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    Items(
        image: 'assets/images/colors/color_white.png',
        jpName: "Shiro",
        enName: "White",
        sound: 'sounds/colors/white.wav'),
    Items(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    Items(
        image: 'assets/images/colors/yellow.png',
        jpName: "Kiiro",
        enName: "Yellow",
        sound: 'sounds/colors/yellow.wav'),
    Items(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'Dusty yellow',
        sound: 'sounds/colors/dusty_yellow.wav'),
    Items(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
    Items(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    Items(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Colors"),
          backgroundColor: const Color(0xFF45312B),
        ),
        body: ListView.builder(
            itemCount: color.length,
            itemBuilder: (context, index) {
              return ListItems(
                number: color[index],
                color:  const Color(0XFF75369F),
              );
            }));
  }
}
