import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(xylophoneapp());

  class xylophoneapp extends StatelessWidget {
    const xylophoneapp({super.key});
void playAkaziki(int akazikiNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$akazikiNumber.wav'));
}

Expanded buildKey(int Akaziki, Color couleur) {
  return Expanded(
    child: TextButton(
      child: Text(''),
      style: TextButton.styleFrom(
        backgroundColor: couleur,
      ),
      onPressed: () {
        playAkaziki(Akaziki);
      },
    ),
  );
}
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(1,Colors.red),
            buildKey(2,Colors.yellow),
            buildKey(3,Colors.green),
            buildKey(4,Colors.blue),
            buildKey(5,Colors.teal),
            buildKey(6,Colors.purple),
            buildKey(7,Colors.orange),

          ],
        ),
  ),
      ),
      );
    }
  }





