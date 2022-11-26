import 'package:flutter/material.dart';
import './Text.dart';

class TextControl extends StatelessWidget {
  // const TextControl({super.key});
  final VoidCallback increment;
  final String text;
  final int index;

  TextControl({this.increment, this.index, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextShow(text),
        OutlinedButton(
          onPressed: increment,
          child: Text(
            'Change Text',
            style: TextStyle(fontSize: 20),
          ),
          style: OutlinedButton.styleFrom(
              primary: Colors.orange, side: BorderSide(color: Colors.orange)),
        )
      ],
    );
  }
}
