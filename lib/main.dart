import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int first_dice=1;
  int second_dice=6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: SafeArea(
          child: Center(
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            first_dice=Random().nextInt(6)+1;
                          });
                        },
                          child: Image.asset("images/dice"+first_dice.toString()+".png")),
                    )),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            second_dice=Random().nextInt(6)+1;
                          });
                        },
                          child: Image.asset("images/dice"+second_dice.toString()+".png")),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
