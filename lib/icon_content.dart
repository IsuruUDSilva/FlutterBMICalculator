import 'package:flutter/material.dart';
import 'reusable_card.dart';
// import 'input_page.dart';

const cardColour = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111328);
const bottomCardColor = Color(0xFFEB1555);
const labelStyle = TextStyle(fontSize: 18, color: Color(0xFFD7D8DB));

class GenderCard extends StatelessWidget {
  const GenderCard({this.icon, this.label, this.colors});

  final IconData icon;
  final String label;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: colors,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            label,
            style: labelStyle,
          ),
        ],
      ),
    );
  }
}
