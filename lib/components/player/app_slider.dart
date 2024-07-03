import 'package:flutter/material.dart';

class AppSlider extends StatefulWidget {
  const AppSlider({super.key});

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Slider(
        value: _currentSliderValue,
        max: 200,
        divisions: 200,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}
