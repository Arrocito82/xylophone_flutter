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
  // AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                // setState(() {
                await player.setSourceAsset('note1.wav');
                // });
                await player.resume();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.green.shade100),
              ),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSourceAsset('note2.wav');
                await player.resume();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade200)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSourceAsset('note3.wav');
                await player.resume();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade300)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSourceAsset('note4.wav');
                await player.resume();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade400)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSourceAsset('note5.wav');
                await player.resume();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade500)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSourceAsset('note6.wav');
                await player.resume();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade600)),
              child: SizedBox(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSourceAsset('note7.wav');
                await player.resume();
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
