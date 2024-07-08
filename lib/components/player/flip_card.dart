// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlipCardContainer extends StatelessWidget {
  const FlipCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL, // default
      side: CardSide.FRONT,
      front: Container(
        constraints: BoxConstraints(
          minHeight: 450.0,
          maxWidth: 500,
        ),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage('assets/kdase/emne_beha_geez.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      back: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white60,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage('assets/kdase/emne_beha_amharic.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
