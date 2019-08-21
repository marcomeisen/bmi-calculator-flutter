import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = 0xFFEB1555;
enum Gender {male, female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {

  Gender selectedGender;

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
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                  cardChild: IconContent(
                    cardIcon: FontAwesomeIcons.mars,
                    cardText: 'Mars',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                  cardChild: IconContent(
                    cardIcon: FontAwesomeIcons.venus,
                    cardText: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColor)),
              Expanded(child: ReusableCard(colour: activeCardColor)),
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
