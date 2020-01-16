import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_hands/abstract_clock_hand.dart';
import 'package:orbis_clock/clock_hands/clock_hand_painter/clock_hand_painter.dart';

class PaintedClockHandWidget extends ClockHand {
  const PaintedClockHandWidget(
      Color color, double size, double angleRadians, double thickness)
      : super(color, size, angleRadians, thickness);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.expand(
        child: CustomPaint(
          painter: ClockHandPainter(size, thickness, angleRadians, color),
        ),
      ),
    );
  }
}
