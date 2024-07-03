// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlipCardContainer extends StatelessWidget {
  const FlipCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill
          .fillBack, // Fill the back side of the card to make in the same size as the front.
      direction: FlipDirection.HORIZONTAL, // default
      side: CardSide.FRONT, // The side to initially display.
      front: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white70,
        ),
        height: 450.0,
        width: double.infinity,
        child: Center(child: Text('Front')),
      ),
      back: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white60,
        ),
        height: 450.0,
        width: double.infinity,
        child: Center(child: const Text('Back')),
      ),
    );
  }
}
