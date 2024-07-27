import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class AppSlider extends StatefulWidget {
  // final double max;
  // final double value;
  // final int divisions;
  // final Function onChangeEnd;
  // final Function onChanged;
  // final Function onChangeStart;
  const AppSlider({
    super.key,
  });

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  // double _currentSliderValue = 0;
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
          // value: widget.value,
          // min: 0,
          // max: widget.max,
          // divisions: widget.divisions,
          // label: _currentSliderValue.round().toString(),
          // onChangeStart: (value) {
          //   widget.onChangeStart();
          //   // setState(() {
          //   //   _currentSliderValue = value;
          //   // });
          // },
          // onChanged: (double value) {
          //   widget.onChanged(value);
          //   // setState(() {
          //   //   _currentSliderValue = value;
          //   // });
          // },
          // onChangeEnd: (value) {
          //   widget.onChangeEnd(value);
          //   // setState(() {
          //   //   _currentSliderValue = value;
          //   // });
          // },

          onChangeStart: (value) {
            try {
              Provider.of<PlayListProvider>(context, listen: false).pause();
            } finally {}
          },
          onChanged: (double value) {
            final Duration duration = Duration(
              milliseconds: value.toInt(),
            );
            try {
              Provider.of<PlayListProvider>(context, listen: false)
                  .seek(duration);
            } finally {}
          },
          onChangeEnd: (double value) {
            final Duration duration = Duration(
              milliseconds: value.toInt(),
            );
            try {
              Provider.of<PlayListProvider>(context, listen: false)
                  .seek(duration);
              Provider.of<PlayListProvider>(context, listen: false).resume();
            } finally {}
          },
          max: Provider.of<PlayListProvider>(context)
              .totalDuration
              .inMilliseconds
              .toDouble(),
          value: Provider.of<PlayListProvider>(context)
                      .currentDuration
                      .inMilliseconds
                      .toDouble() >
                  Provider.of<PlayListProvider>(context)
                      .totalDuration
                      .inMilliseconds
                      .toDouble()
              ? 0
              : Provider.of<PlayListProvider>(context)
                  .currentDuration
                  .inMilliseconds
                  .toDouble(),
          divisions: Provider.of<PlayListProvider>(context)
                      .totalDuration
                      .inMilliseconds
                      .toInt() !=
                  0
              ? Provider.of<PlayListProvider>(context)
                  .totalDuration
                  .inMilliseconds
                  .toInt()
              : 1,
        ),
      ),
    );
  }
}
