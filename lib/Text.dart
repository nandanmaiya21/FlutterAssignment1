import 'package:flutter/material.dart';

class TextShow extends StatelessWidget {
  //const TextShow({super.key});
  String text;
  TextShow(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
