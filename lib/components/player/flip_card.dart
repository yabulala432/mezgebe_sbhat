// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlipCardContainer extends StatelessWidget {
  final String frontImagePath;
  final String backImagePath;
  const FlipCardContainer({
    super.key,
    required this.frontImagePath,
    required this.backImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL, // default
      side: CardSide.FRONT,
      front: Container(
        constraints: BoxConstraints(
          minHeight: 450.0,
          maxHeight: 500.0,
          maxWidth: 500,
        ),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(frontImagePath),
            fit: BoxFit.fill,
          ),
        ),
      ),
      back: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage(backImagePath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
