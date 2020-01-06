import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_screen/clock_screen_model/clock_data_model.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_model/clock_screen_view_model.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/hand_hour.dart';

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
          return AspectRatio(
            aspectRatio: 5.0 / 3.0,
            child: Container(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  CustomPaint(
                    size: Size(10, 10),
                    painter: HourHandPainter(
                        hours: snapshot.data.hour,
                        minutes: snapshot.data.minute),
                  ),
                  Center(child: Text('${snapshot.data.seconds}'))
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
