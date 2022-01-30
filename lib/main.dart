import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('answer chosen you ');
  }

  @override
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favourite colorz?',
      'What\'s your favourite animal? '
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Appz'),
        ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}

/*
home: Text('Hello 122'),
 */
