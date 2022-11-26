import 'dart:math';

import 'package:flutter/material.dart';
import './TextControl.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Myapp> {
  int index = 0;
  List<String> texts = [
    'Hello!',
    'Hola!',
    'नमस्ते!',
    'Bonjour!',
    'ciao!',
    'привет!',
    'أهلا!',
    'Olá!',
    '안녕하세요!',
    'こんにちわ!'
  ];
  void _increment() {
    setState(() {
      index = Random().nextInt(texts.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.orange,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text(
            "Assignment1",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: TextControl(
          increment: _increment,
          index: index,
          text: texts[index],
        ),
      ),
    );
  }
}
