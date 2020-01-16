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
          child: TextWidget('12', 50.0),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: TextWidget('09', 50.0),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: TextWidget('06', 50.0),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextWidget('03', 50.0),
        ),

        ///10, 11
        Align(
          alignment: Alignment(-0.7, -0.55),
          child: TextWidget('10', 22.0),
        ),

        Align(
          alignment: Alignment(-0.37, -0.9),
          child: TextWidget('11', 22.0),
        ),

        ///04, 05
        Align(
          alignment: Alignment(0.7, 0.55),
          child: TextWidget('04', 22.0),
        ),

        Align(
          alignment: Alignment(0.37, 0.9),
          child: TextWidget('05', 22.0),
        ),

        ///07, 08
        Align(
          ///use this
          alignment: Alignment(-0.7, 0.55),
          child: TextWidget('08', 22.0),
        ),

        Align(
          alignment: Alignment(-0.37, 0.9),
          child: TextWidget('07', 22.0),
        ),

        ///01, 02
        Align(
          alignment: Alignment(0.7, -0.55),
          child: TextWidget('02', 22.0),
        ),

        Align(
          alignment: Alignment(0.37, -0.9),
          child: TextWidget('01', 22.0),
        ),
      ],
    );
  }
}
