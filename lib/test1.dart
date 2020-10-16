import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  final Function reseHand;
  final List<Map<String, Object>> question;
  final int index;
  Test1({
    @required this.question,
    @required this.reseHand,
    @required this.index,
  });

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  var _showAnswer = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            child: Text(
              widget.question[widget.index]['question'],
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              _showAnswer
                  ? widget.question[widget.index]['answer']
                  : "Raise Your hand to know the correct answer",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        RaisedButton(
          child: Text(
            "Rase Hand",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 5,
          color: Colors.purpleAccent,
          onPressed: () {
            setState(() {
              _showAnswer = !_showAnswer;
            });
          },
        ),
        RaisedButton(
          child: Text(
            "Next",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 5,
          color: Colors.purple,
          onPressed: () {
            setState(() {
              if (_showAnswer) {
                _showAnswer = false;
              }
            });
            widget.reseHand();
          },
        )
      ],
    );
  }
}
