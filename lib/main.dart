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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note1.wav'));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade100)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note2.wav'));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade200)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note3.wav'));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade300)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note4.wav'));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade400)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note5.wav'));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade500)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note6.wav'));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade600)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note7.wav'));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade700)),
              child: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
