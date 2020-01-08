import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_hands/clock_hand_widget/clock_hand_widget.dart';
import 'package:vector_math/vector_math_64.dart' show radians;
import 'package:flutter/semantics.dart';

import 'package:orbis_clock/clock_screen/clock_screen_model/clock_data_model.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_model/clock_screen_view_model.dart';

class ClockScreen extends StatelessWidget {
  final _viewModel = ClockScreenViewModel();
  final _radiansPerTick = radians(360 / 60);
  final _radiansPerHour = radians(360 / 12);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ClockDataModel>(
      stream: _viewModel.timeStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LinearProgressIndicator();
        } else {
          return Semantics.fromProperties(
            properties: SemanticsProperties(
                label: 'Orbis clock', value: snapshot.data.now),
            child: Container(
              child: Stack(
                children: <Widget>[
                  ///seconds hand
                  ClockHandWidget(Colors.black, 0.9,
                      snapshot.data.seconds * _radiansPerTick, 2),

                  ///minute hand
                  ClockHandWidget(Colors.green, 0.7,
                      snapshot.data.minute * _radiansPerTick, 4),

                  ///hour hand
                  ClockHandWidget(
                      Colors.purple,
                      0.5,
                      snapshot.data.hour * _radiansPerHour +
                          (snapshot.data.minute / 60),
                      6),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
