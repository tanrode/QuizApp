import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function ans;
  final String ansVal;
  Answer(this.ans,this.ansVal);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Color.fromRGBO(173, 216, 230, 1),
      child: RaisedButton(child: Text(ansVal,style: TextStyle(fontSize: 18),),onPressed: ans,color: Color.fromRGBO(173, 216, 230, 1),textColor: Color.fromRGBO(148, 0, 211, 1),)
    );
  }
}