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
        body: SafeArea(
          child: Container(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
