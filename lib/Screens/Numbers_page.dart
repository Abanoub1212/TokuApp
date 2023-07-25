import 'package:flutter/material.dart';
import 'package:toku/Models/Items.dart';
import 'package:toku/Components/ListItems.dart';

class NumbersPage extends StatelessWidget {
  final List<Items> number = const [
    Items(
        image: "assets/images/numbers/number_one.png",
        jpName: "Ichi",
        enName: "one",
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_two.png",
        jpName: "Ni",
        enName: "two",
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_three.png",
        jpName: "San",
        enName: "three",
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_four.png",
        jpName: "Shi",
        enName: "four",
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_five.png",
        jpName: "Go",
        enName: "five",
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "six",
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "seven",
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_eight.png",
        jpName: "Hachi",
        enName: "eight",
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_nine.png",
        jpName: "Kyũ",
        enName: "nine",
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Items(
        image: "assets/images/numbers/number_ten.png",
        jpName: "Jũ",
        enName: "ten",
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers"),
          backgroundColor: const Color(0xFF45312B),
        ),
        body: ListView.builder(
            itemCount: number.length,
            itemBuilder: (context, index) {
              return ListItems(
                number: number[index],
                color: const Color(0xFFE99135),
              );
            }));
  }

  List<Widget> getlist(List<Items> number) {
    List<Widget> itemslist = [];
    for (int i = 0; i < number.length; i++) {
      itemslist.add(ListItems(
        number: number[i],
        color: const Color(0xFFE99135),
      ));
    }
    return itemslist;
  }
}
