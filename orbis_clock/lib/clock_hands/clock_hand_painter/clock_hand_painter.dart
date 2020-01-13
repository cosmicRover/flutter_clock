import 'dart:math' as math;

import 'package:flutter/material.dart';

class ClockHandPainter extends CustomPainter {
  final double handSize;
  final double lineWidth;
  final double angleRadians;
  final Color color;

  const ClockHandPainter(
      this.handSize, this.lineWidth, this.angleRadians, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final center = (Offset.zero & size).center;
    final angle = angleRadians - math.pi / 2.0;
    final length = size.shortestSide * 0.5 * handSize;
    final position = center + Offset(math.cos(angle), math.sin(angle)) * length;
    final linePaint = Paint()
      ..color = color
      ..strokeWidth = lineWidth
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(center, position, linePaint);
  }

  @override
  bool shouldRepaint(ClockHandPainter oldDelegate) {
    return oldDelegate.handSize != handSize ||
        oldDelegate.lineWidth != lineWidth ||
        oldDelegate.angleRadians != angleRadians ||
        oldDelegate.color != color;
  }
}
