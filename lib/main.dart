import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: TextButton(
            child: Text('click me'),
            onPressed: () {
              print('clicked'); 
              Audio.load('assets/note1.wav')..play()..dispose();
            },
          ),
        )),
      ),
    );
  }
}
