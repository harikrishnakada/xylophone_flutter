import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var keys = [1, 2, 3, 4, 5, 6, 7];
  void PlaySound(int audioId) {
    final player = AudioPlayer();
    player.play(AssetSource('audio/note$audioId.wav'),
        mode: PlayerMode.lowLatency);
  }

  Widget BuildKey(Color color, int audioId) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          PlaySound(audioId);
        },
        enableFeedback: false,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(Colors.purple, 1),
              BuildKey(Colors.indigo, 2),
              BuildKey(Colors.blue, 3),
              BuildKey(Colors.green, 4),
              BuildKey(Colors.yellow, 5),
              BuildKey(Colors.orange, 6),
              BuildKey(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}
