import 'package:flutter/material.dart';
import 'package:sample_clock/clock_screen/clock_screen_model/ClockDataModel.dart';
import 'package:sample_clock/clock_screen/clock_screen_view_model/ClockScreenViewModel.dart';

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
