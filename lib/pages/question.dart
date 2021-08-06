import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({ Key? key }) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
    );
  }
}