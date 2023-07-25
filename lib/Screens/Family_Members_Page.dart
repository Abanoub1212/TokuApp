import 'package:flutter/material.dart';
import 'package:toku/Models/Items.dart';
import 'package:toku/Components/ListItems.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<Items> familymember = const [
    Items(
        image: 'assets/images/family_members/family_father.png',
        jpName: "Chichioya",
        enName: "Father",
        sound: 'sounds/family_members/father.wav'),
    Items(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: "Musume",
        enName: "Daughter",
        sound: 'sounds/family_members/daughter.wav'),
    Items(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: "Ojĩsan",
        enName: "Grand Father",
        sound: 'sounds/family_members/grand_father.wav'),
    Items(
        image: 'assets/images/family_members/family_mother.png',
        jpName: "Hahaoya",
        enName: "Mother",
        sound: 'sounds/family_members/mother.wav'),
    Items(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: "Sobo",
        enName: "Grand Mother",
        sound: 'sounds/family_members/grand_mother.wav'),
    Items(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: "Nĩsan",
        enName: "Older Brother",
        sound: 'sounds/family_members/older_bother.wav'),
    Items(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: "Anr",
        enName: "Older Sister",
        sound: 'sounds/family_members/older_sister.wav'),
    Items(
        image: 'assets/images/family_members/family_son.png',
        jpName: "Musuko",
        enName: "Son ",
        sound: 'sounds/family_members/son.wav'),
    Items(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: "otõto",
        enName: "Younger Brother",
        sound: 'sounds/family_members/younger_brohter.wav'),
    Items(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: "Imōto",
        enName: "Younger Sister",
        sound: 'sounds/family_members/younger_sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Family Members"),
          backgroundColor: const Color(0xFF45312B),
        ),
        body: ListView.builder(
            itemCount: familymember.length,
            itemBuilder: (context, index) {
              return ListItems(
                number: familymember[index],
                color: const Color(0XFF588834),
              );
            }));
  }
}
