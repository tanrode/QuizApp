import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final Function startGame;

  Start(this.startGame());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'India GK Quiz',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 200, 0, 0.7),
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text(
              'START',
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            onPressed: startGame,
            color: Color.fromRGBO(0, 0, 0, 1),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
