import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/text_widget.dart';

class TextWidgetsCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ///12, 03, 06, 09
        Align(
          alignment: Alignment.topCenter,
          child: TextWidget('12', 45.0),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: TextWidget('09', 45.0),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: TextWidget('06', 45.0),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextWidget('03', 45.0),
        ),
      ],
    );
  }
}
