import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  final Function reseHand;
  final List<Map<String, Object>> question;
  final int index;
  Test1({
    @required this.question,
    @required this.reseHand,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(
          question[index]['question'],
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
        onPressed: reseHand,
      ),
    );
  }
}
