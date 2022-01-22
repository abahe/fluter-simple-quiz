import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

//function wiht only one expression
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var questionIndex = 0;

    var questions = [
      'What\'s your favourite colorz?',
      'What\'s your favourite animal? '
    ];

    void answerQuestion() {
      setState(() {
        questionIndex = questionIndex + 1;
      });
      print(questions[questionIndex]);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Appz'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
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
