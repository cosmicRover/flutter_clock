import 'package:flutter/material.dart';
import 'package:flutter_clock_helper/customizer.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/clock_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: ClockCustomizer((ClockModel _) => ClockScreen()),
    );
  }
}
