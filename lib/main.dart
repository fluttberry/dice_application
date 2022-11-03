import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const DiceApp());

class DiceApp extends StatelessWidget {
  const DiceApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

Random random = Random();

class _MyWidgetState extends State<MyWidget> {
  int solJak = 2;
  int onJak = 5;
  void ozgort() {
    setState(() {
      solJak = random.nextInt(6) + 1;
      onJak = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal,
        title: const Text('Dice App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: Row(children: [
            Expanded(
              child: InkWell(
                onTap: ozgort,
                child: Container(
                  color: Colors.red,
                  child: Image.asset(
                    'assets/images/Dice_$solJak.jpg',
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 25.0,
            ),
            Expanded(
              child: InkWell(
                onTap: ozgort,
                child: Image.asset(
                  'assets/images/Dice_$onJak.jpg',
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
