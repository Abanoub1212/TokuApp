import 'package:flutter/material.dart';
class Catogery extends StatelessWidget {
  Catogery({this.color,this.text,this.OnTap}) ;
  Color? color;
  String? text;
  VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.center,
        height: 65,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text(text!,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),),
        ),
      ),
    );
  }
}