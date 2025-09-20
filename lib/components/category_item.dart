import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color,this.onTap});

  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 74,
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        color: color,
        child: Text(text!, style: TextStyle(color: Colors.white, fontSize: 24)),
      ),
    );
  }
}
