import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, this.correctAnswer = 0}) : super(key: key);
  int correctAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[800],
        title: Text(
          'نتیجه آزمون شما',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image(
                image: AssetImage(
                  'images/cup.png',
                ),
              ),
            ),
            Text(
              'پاسخ های صحیح شما',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '$correctAnswer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 100,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
