import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';

TextEditingController vemailController = TextEditingController();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Application de match'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    var container = Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xff027DFD),
              Color(0xff4100E0),
              Color(0xff1CDAC5),
            ],
                stops: [
              0.1,
              0.20,
              0.50,
            ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(math.pi / 200))),
        alignment: Alignment.center,
       );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
              children: [
                _vnomequipe()
              ],
            ),
      ), 
    );
  }

  Widget _vnomequipe() {
    return Container(
        margin: const EdgeInsets.all(10),
        child: CupertinoTextField(
          controller: vemailController,
          placeholder: "Entrer le nom de l'équipe",
          decoration: BoxDecoration(
              border: Border.all(color: Colors.greenAccent),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white),
        ));
  }
}
