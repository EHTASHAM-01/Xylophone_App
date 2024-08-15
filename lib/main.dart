import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(const XylophoneApp());




class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playsound (int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded buildKey({ required Color color , required int soundNumber}){
    return Expanded(
      child: FloatingActionButton(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      
          onPressed: () {
            playsound ( soundNumber ) ;
          },
          backgroundColor: color,
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
      //         we use this button also:
      //           Expanded(
      //           child: ElevatedButton(
      //             child: Text(''),
      //             style: ElevatedButton.styleFrom(
      //               shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      //               backgroundColor: Colors.green,
      //             ),
      //             onPressed: ()  {
      //               playsound(1);
      //               // player.stop();
      //             },
      //           ),
      // ),
              buildKey(color: Colors.red, soundNumber:1),

              buildKey(color: Colors.blue, soundNumber:2),

              buildKey(color: Colors.yellow, soundNumber:3),

              buildKey(color: Colors.green, soundNumber:4),

              buildKey(color: Colors.purple, soundNumber:5),

              buildKey(color: Colors.orange, soundNumber:6),

              buildKey(color: Colors.indigo, soundNumber:7),
            ],
          ),

        ),
      ),

    );
  }
}

