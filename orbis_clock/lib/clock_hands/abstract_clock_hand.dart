import 'package:flutter/material.dart';

abstract class ClockHand extends StatelessWidget {
  final Color color;
  final double size;
  final double angleRadians;
  final double thickness;

  const ClockHand(this.color, this.size, this.angleRadians, this.thickness);
}
