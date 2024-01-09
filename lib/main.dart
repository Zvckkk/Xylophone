import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const XylophoneApp());

}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
  
}

class _XylophoneAppState extends State<XylophoneApp> {


  Expanded keys(int A, Color B){
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: B,
            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('note$A.wav'));
          },
          child: Container()
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              keys(1, Colors.red),
              keys(2, Colors.orange),
              keys(3, Colors.yellow),
              keys(4, Colors. green),
              keys(5, Colors. teal),
              keys(6, Colors. blue),
              keys(7, Colors.indigo),
            ],
          ),
        ),
      )
    );
  }
}

