import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/text_widget.dart';

class TextWidgetsStack extends StatelessWidget {
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

        ///10, 11
        Align(
          alignment: Alignment(-0.7, -0.55),
          child: TextWidget('10', 25.0),
        ),

        Align(
          alignment: Alignment(-0.37, -0.9),
          child: TextWidget('11', 25.0),
        ),

        ///04, 05
        Align(
          alignment: Alignment(0.7, 0.55),
          child: TextWidget('04', 25.0),
        ),

        Align(
          alignment: Alignment(0.37, 0.9),
          child: TextWidget('05', 25.0),
        ),

        ///07, 08
        Align(
          ///use this
          alignment: Alignment(-0.7, 0.55),
          child: TextWidget('08', 25.0),
        ),

        Align(
          alignment: Alignment(-0.37, 0.9),
          child: TextWidget('07', 25.0),
        ),

        ///01, 02
        Align(
          alignment: Alignment(0.7, -0.55),
          child: TextWidget('02', 25.0),
        ),

        Align(
          alignment: Alignment(0.37, -0.9),
          child: TextWidget('01', 25.0),
        ),
      ],
    );
  }
}
