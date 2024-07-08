import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class AppSlider extends StatefulWidget {
  final Function onChanged;
  final double max;
  final double value;
  final int divisions;
  // final Function onChangeEnd;
  const AppSlider({
    super.key,
    required this.onChanged,
    required this.max,
    required this.value,
    required this.divisions,
    // required this.onChangeEnd,
  });

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbShape: SliderComponentShape.noThumb,
          trackHeight: 3.0,
          activeTrackColor:
              Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
          // hide the poping up pointer when sliding
          showValueIndicator: ShowValueIndicator.never,
        ),
        child: Slider(
          value: widget.value,
          min: 0,
          max: widget.max,
          divisions: widget.divisions,
          // label: _currentSliderValue.round().toString(),
          // onChangeStart: (value) {
          //  widget. onChangeStart(value);
          // },
          onChanged: (double value) {
            widget.onChanged(value);
            setState(() {});
          },
        ),
      ),
    );
  }
}
