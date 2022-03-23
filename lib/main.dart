import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';



void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(String str)
  {
    AudioCache player=AudioCache();
    player.play(str);
  }
  Expanded buildbutton(String sound,Color color)
  {
    return Expanded(
        child:TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
          onPressed: (){
            playsound(sound);
          },
        )
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
              buildbutton('note1.wav',Colors.red),
              buildbutton('note2.wav',Colors.orange),
              buildbutton('note3.wav',Colors.yellow),
              buildbutton('note4.wav',Colors.green),
              buildbutton('note5.wav',Colors.grey),
              buildbutton('note6.wav',Colors.blue),
              buildbutton('note7.wav',Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
