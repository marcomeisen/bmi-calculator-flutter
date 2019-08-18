import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: Color(activeCardColor),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(activeCardColor),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: Color(activeCardColor),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(colour: Color(activeCardColor))),
              Expanded(child: ReusableCard(colour: Color(activeCardColor))),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            color: Color(bottomContainerColor),
          )
        ], //Column children Widget
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
