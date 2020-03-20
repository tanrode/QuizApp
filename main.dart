import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() {
  runApp(course_app1());
}

class course_app1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return course_app1State();
  }
}

class course_app1State extends State<course_app1> {
  var count = 0;
  var _totScore = 0;
  var ques = [
    {
      'Q': 'Who was the 1st President of India?',
      'A': [
        {'text' : 'Jawaharlal Nehru', 'score': 0},
        {'text' : 'Lal Bahadur Shastri', 'score': 0},
        {'text' : 'Dr.Rajendra Prasad', 'score': 1},
        {'text' : 'Dr.S Radhakrishnan', 'score': 0},
      ],
    },
    {
      'Q': 'What is the Capital of India?',
      'A': [
        {'text' : 'Kolkata', 'score': 0},
        {'text' : 'New Delhi', 'score': 1},
        {'text' : 'Mumbai', 'score': 0},
        {'text' : 'Bangalore', 'score': 0},
      ],
    },
    {
      'Q': 'Where is the Gateway of India situated in?',
      'A': [
        {'text' : 'New Delhi', 'score': 0},
        {'text' : 'Hyderabad', 'score': 0},
        {'text' : 'Kolkata', 'score': 0},
        {'text' : 'Mumbai', 'score': 1},
      ],
    },
  ];
  void _setQuestion(int score) {
    setState(() {
      //if (count == ques.length - 1);
      //else
        count = count + 1;
        _totScore += score;
    });
  }

  void _startGame()
  {
    setState(() {
      count=0;
      _totScore=0;
    });    
  }
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 225, 0, 0.75),
          title: Text('My First App'),
          centerTitle: true,
        ),
        body: count < ques.length
            ? Quiz(changeState: _setQuestion,quizQues: ques,ct: count) 
             : Result(_totScore,_startGame),
      ),
    );
  }
}
