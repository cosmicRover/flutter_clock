import 'package:flutter/material.dart';
import 'package:flutter_clock_helper/customizer.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:sample_clock/clock_screen/clock_screen_view_model/ClockScreenViewModel.dart';
import 'package:sample_clock/clock_screen/clock_screen_view_widgets/ColckScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      home: ClockCustomizer((ClockModel _) => ClockScreen()),
    );
  }
}
