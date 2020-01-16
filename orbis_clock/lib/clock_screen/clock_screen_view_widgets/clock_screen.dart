import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/text_widget.dart';
import 'package:vector_math/vector_math_64.dart' show radians;
import 'package:flutter/semantics.dart';

import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/loading_widget.dart';
import 'package:orbis_clock/app_constants/app_colors.dart';
import 'package:orbis_clock/clock_hands/clock_hand_widget/painted_clock_hand_widget.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/text_widget_stack.dart';
import 'package:orbis_clock/flare_animated_widgets/flare_animated_container.dart';
import 'package:orbis_clock/clock_screen/clock_screen_model/clock_data_model.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_model/clock_screen_view_model.dart';

class ClockScreen extends StatelessWidget {
  final _viewModel = ClockScreenViewModel();
  final _radiansPerTick = radians(360 / 60);
  final _radiansPerHour = radians(360 / 12);
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ClockDataModel>(
      stream: _viewModel.timeStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingCard();
        } else {
          return Semantics.fromProperties(
            properties: SemanticsProperties(
                label: 'Orbis clock', value: snapshot.data.now),
            child: Container(
              color: _colors.outerSpace,
              child: Stack(
                children: <Widget>[
                  ///solar system
                  FlareAnimatedWidget(),

                  ///numbers
                  TextWidgetsStack(),

                  ///debug time and numbers alignment, uncomment these
//                  Center(child: TextWidget('${snapshot.data.seconds}', 45.0),),
//                  PaintedClockHandWidget(_colors.clockHandWhite, 1,
//                      snapshot.data.seconds * _radiansPerTick, 2),

                Center(
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: _colors.clockHandWhite,
                      shape: BoxShape.circle
                    ),
                  ),
                ),

                  ///minute hand
                  PaintedClockHandWidget(_colors.clockHandWhite, 0.7,
                      snapshot.data.minute * _radiansPerTick, 2),

                  ///hour hand
                  PaintedClockHandWidget(
                      _colors.clockHandWhite,
                      0.45,
                      snapshot.data.hour * _radiansPerHour +
                          (snapshot.data.minute / 60) * _radiansPerHour,
                      5),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
