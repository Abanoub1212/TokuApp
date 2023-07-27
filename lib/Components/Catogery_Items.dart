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
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        margin: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        width: 300,
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(text!,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),),
          ),
        ),
      ),
    );
  }
}