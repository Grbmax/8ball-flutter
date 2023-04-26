import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.lightBlue,
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballFace = 1;
  void changeBallFace() {
    setState(() {
      ballFace = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 15)),
            onPressed: () {
              changeBallFace();
            },
            child: Image.asset('images/ball$ballFace.png'),
          ),
        ),
      ],
    );
  }
}
