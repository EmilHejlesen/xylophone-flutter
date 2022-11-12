import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

void playSound(int noteNumber) {
  Audio.load('assets/note$noteNumber.wav')
    ..play()
    ..dispose();
}

Widget buildKey({Color color, int toneNumber}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
      onPressed: () {
        playSound(toneNumber);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, toneNumber: 1),
              buildKey(color: Colors.orange, toneNumber: 2),
              buildKey(color: Colors.yellow, toneNumber: 3),
              buildKey(color: Colors.green, toneNumber: 4),
              buildKey(color: Colors.teal, toneNumber: 5),
              buildKey(color: Colors.blue, toneNumber: 6),
              buildKey(color: Colors.purple, toneNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
