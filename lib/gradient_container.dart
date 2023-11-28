import 'package:flutter/material.dart';
//import 'package:second_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

 class GradientContainer extends StatelessWidget {
  const GradientContainer(List<Color> listColor, {key})
      : this.listColor = listColor,
        super(key: key);
  final List<Color> listColor;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: listColor,

        ),
      ),
      child: const Center(
       // child: DiceRoller()
      ),
    );
  }
}
