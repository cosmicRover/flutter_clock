import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_screen/clock_screen_model/clock_data_model.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_model/clock_screen_view_model.dart';

class ClockScreen extends StatelessWidget {
  final viewModel = ClockScreenViewModel();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ClockDataModel>(
      stream: viewModel.timeStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LinearProgressIndicator();
        } else {
          return Center(child: Text("${snapshot.data.seconds}"));
        }
      },
    );
  }
}