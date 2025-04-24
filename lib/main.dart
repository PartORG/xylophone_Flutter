import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Widget buildKey({int soundNumber = 1, Color soundColor = Colors.red}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(soundColor),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: SizedBox.shrink(),
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
            children: [
              buildKey(
                soundNumber: 1,
                soundColor: Colors.red,
              ),
              buildKey(
                soundNumber: 2,
                soundColor: Colors.orange,
              ),
              buildKey(
                soundNumber: 3,
                soundColor: Colors.yellow,
              ),
              buildKey(
                soundNumber: 4,
                soundColor: Colors.green,
              ),
              buildKey(
                soundNumber: 5,
                soundColor: Colors.teal,
              ),
              buildKey(
                soundNumber: 6,
                soundColor: Colors.blue,
              ),
              buildKey(
                soundNumber: 7,
                soundColor: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
