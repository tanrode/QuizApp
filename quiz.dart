import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final int ct;
  final List<Map<String,Object>> quizQues;
  final Function changeState;

  Quiz({@required this.quizQues,@required this.changeState,@required this.ct});
  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  MyQuestion(quizQues[ct]['Q']),
                  ...(quizQues[ct]['A'] as List<Map<String,Object>>).map((answers) {
                    return Answer(() => changeState(answers['score']),answers['text']);
                  }).toList()
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              );
  }
}