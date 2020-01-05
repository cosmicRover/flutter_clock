import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:sample_clock/clock_screen/clock_screen_model/ClockDataModel.dart';
import 'package:sample_clock/clock_screen/clock_screen_view_model/AbstractClockViewModel.dart';

class ClockScreenViewModel implements AbstractClockViewModel {
  ClockScreenViewModel() {
    Timer.periodic(Duration(seconds: 1), (_){
      _controller.sink.add(ClockDataModel.getFormattedData(DateTime.now()));
    });
  }

  final _controller = StreamController<ClockDataModel>();
  Stream<ClockDataModel> get timeStream => _controller.stream;

  @override
  void dispose() {
    _controller.close();
  }
}
