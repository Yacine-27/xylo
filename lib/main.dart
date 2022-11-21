import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void playTune(String source) {
    final player = AudioPlayer();
    player.play(AssetSource(source));
  }

  Widget addKey(String source, Color color) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
          enableFeedback: false,
        ),
        onPressed: () {
          playTune(source);
        },
        child: SizedBox.shrink(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addKey('note1.wav', Colors.red),
              addKey('note2.wav', Colors.orange),
              addKey('note3.wav', Colors.yellow),
              addKey('note4.wav', Colors.green),
              addKey('note5.wav', Colors.green.shade800),
              addKey('note6.wav', Colors.cyan),
              addKey('note7.wav', Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
