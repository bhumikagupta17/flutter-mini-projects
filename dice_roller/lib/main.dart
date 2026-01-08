// DICE ROLL

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

// stateful wideget
// widget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// state
class _MyAppState extends State<MyApp> {
  int dice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice Roll",style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 69, 6, 1),
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/dice-six-faces-$dice.png',width: 300,height: 300,),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    dice = Random().nextInt(6) + 1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(54, 54),
                  backgroundColor: const Color.fromARGB(255, 69, 6, 1),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Roll Dice!",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

