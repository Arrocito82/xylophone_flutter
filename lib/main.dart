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
          backgroundColor: Colors.black87,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 5.0, 0, 5.0),
            child: Image.asset(
              "images/default-monochrome.png",
              color: Color.fromRGBO(255, 172, 199, 1),
            ),
          ),
          centerTitle: true,
          title: Text("Xylophone App"),
          titleTextStyle: TextStyle(
              color: Color.fromRGBO(255, 172, 199, 1),
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
              // fontStyle: FontStyle.italic,
              fontFamily: "HankenGrotesk"),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(255, 172, 199, 1),
                  Color.fromRGBO(255, 90, 32, 1),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
