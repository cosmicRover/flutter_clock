import 'dart:math';

import 'package:flutter/material.dart';

class HourHandPainter extends CustomPainter {
  final Paint hourHandPaint;
  int hours;
  int minutes;

  HourHandPainter({this.hours, this.minutes}) : hourHandPaint = Paint() {
    hourHandPaint.color = Colors.black;
    hourHandPaint.style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width / 2;

    canvas.save();
    canvas.translate(radius, radius);

    //flip hour hand on y axis
    canvas.rotate(this.hours >= 12
        ? 2 * pi * ((this.hours - 12) / 12 + (this.minutes / 720))
        : 2 * pi * ((this.hours / 12) + (this.minutes / 720)));

    //values to draw hour hand
    Path path = Path();

//    path.moveTo(size.width/2, size.height/2);
//    path.moveTo(0.0, -radius+radius/4);
//    path.lineTo(-5.0, -radius+radius/2);
//    path.lineTo(-2.0, 0.0);
//    path.lineTo(2.0, 0.0);
//    path.lineTo(5.0, -radius+radius/2);
//    path.lineTo(1.0, -radius+radius/4);
    path.close();

    canvas.drawPath(path, hourHandPaint);
    canvas.drawShadow(path, Colors.black, 2.0, false);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
