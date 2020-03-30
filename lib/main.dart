import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
                  child: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: Center(
                child: Text('Ask Me Anything'),
              ),
              backgroundColor: Colors.pink,
            ),
            body: MagicBall(),
          ),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  magicBall=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$magicBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}
