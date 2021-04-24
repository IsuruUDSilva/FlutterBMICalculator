import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender{
  Male,
  Female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender selectedGender;

  // void updateColor(Gender selectedGender){
  //   if(selectedGender==Gender.Male){
  //     maleCardColor = cardColour;
  //     femaleCardColor = inactiveCardColor;
  //   }else if(selectedGender == Gender.Female){
  //     femaleCardColor = cardColour;
  //     maleCardColor = inactiveCardColor;
  //   }
  // }

  // void updateColors(Gender selectedGender){
  //   selectedGender == Gender.Male ? maleCardColor = maleCardColor  femaleCardColor = inactiveCardColor;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI Calculator")),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print("male card was tapped");
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      child: GenderCard(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                        colors: selectedGender==Gender.Male? cardColour : inactiveCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender = Gender.Female;
                          print("tap on female");
                        });
                      },
                      child: GenderCard(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                        colors: selectedGender==Gender.Female? cardColour : inactiveCardColor,
                      ),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                  ),
                )
              ],
            )),
            Container(
              color: bottomCardColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 70,
            )
          ],
        ));
  }
}



