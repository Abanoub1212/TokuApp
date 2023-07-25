import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/Models/Items.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key, required this.number,required this.color}) : super(key: key);
  final Items number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xFFFFF6DC), child: Image.asset(number.image!)),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: (){
                try{
                  final player = AudioPlayer();
                  player.play(AssetSource(number.sound));
                }catch(ex){
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
    );
  }
}

class PhraseItems extends StatelessWidget {
  const PhraseItems({Key? key, required this.phrase,required this.color}) : super(key: key);
  final Items phrase;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: (){
                try{
                  final player = AudioPlayer();
                  player.play(AssetSource(phrase.sound));
                }catch(ex){
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
    );
  }
}

