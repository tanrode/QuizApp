import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function startGame;
  final List msg = [
    'That\'s alright,you can always try again',
    'Good Work',
    'Great Job',
    'Fantastic'
  ];

  Result(this.score,this.startGame);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'You scored ' + score.toString() + '/3\n',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 200, 0, 0.7),
            ),
          ),
          score == 0
              ? Text(
                  msg[0],
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 200, 0, 0.7),
                  ),textAlign: TextAlign.center,
                )
              : (score == 3
                  ? Text(
                      msg[3],
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 200, 0, 0.7),
                      ),textAlign: TextAlign.center,
                    )
                  : Text(
                      msg[1],
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 200, 0, 0.7),
                      ),textAlign: TextAlign.center,
                    )),RaisedButton(child: Text('Try Again?'),onPressed: startGame,hoverElevation: 50,)
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
