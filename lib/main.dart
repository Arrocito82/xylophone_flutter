import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 90.0,
            leadingWidth: 75.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(255, 90, 32, 1),
                    Color.fromRGBO(255, 172, 199, 1),
                  ],
                ),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 5.0, 5.0, 5.0),
              child: Image.asset(
                "images/default-monochrome.png",
                color: Colors.white,
              ),
            ),
            // centerTitle: true,
            title: Text("Xylophone App"),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                // fontWeight: FontWeight.w500,
                // fontStyle: FontStyle.italic,
                fontFamily: "HankenGrotesk"),
          ),
          body: Xylophone()),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound({required int soundNumber}) async {
    final player = AudioPlayer();
    await player.setSourceAsset('note$soundNumber.wav');
    await player.resume();
  }

  Expanded chordNote(
      {required int soundNumber,
      required Color chordColor,
      required String chord}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber: soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(chordColor),
        ),
        child: Text(
          chord,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          chordNote(
              soundNumber: 1, chordColor: Colors.green.shade200, chord: "C"),
          chordNote(
              soundNumber: 2, chordColor: Colors.green.shade300, chord: "D"),
          chordNote(
              soundNumber: 3, chordColor: Colors.green.shade400, chord: "E"),
          chordNote(
              soundNumber: 4, chordColor: Colors.green.shade500, chord: "F"),
          chordNote(
              soundNumber: 5, chordColor: Colors.green.shade600, chord: "G"),
          chordNote(
              soundNumber: 6, chordColor: Colors.green.shade700, chord: "A"),
          chordNote(
              soundNumber: 7, chordColor: Colors.green.shade800, chord: "B"),
        ],
      ),
    );
  }
}
