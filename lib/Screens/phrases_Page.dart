import 'package:toku/Models/Items.dart';
import 'package:flutter/material.dart';
import 'package:toku/Models/Items.dart';
import 'package:toku/Components/ListItems.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesPage extends StatelessWidget {
  final List<Items> phrase = const [
    Items(
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: 'dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Items(
        jpName: 'Watashi wa puroguramingu daisukidesu',
        enName: 'i love  programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    Items(
        jpName: 'Puroguramingu wa kantandesu ',
        enName: 'programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    Items(
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    Items(
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Items(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Items(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Items(
      jpName: 'Kimasu ka',
      enName: 'are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    Items(
      jpName: 'Hai watashi wa kite imasu',
      enName: 'yes i am coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Phrases"),
          backgroundColor: const Color(0xFF45312B),
        ),
        body: ListView.builder(
            itemCount: phrase.length,
            itemBuilder: (context, index) {
              return PhraseItems(
                phrase: phrase[index],
                color: const Color(0XFF55ABC9),
              );
            }));
  }
}
