import 'package:flutter/material.dart';
import './question.dart';

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
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ..
                print('chosen 3!');
                // ....
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
home: Text('Hello 122'),
 */
