import 'package:flutter_clock_helper/model.dart';

class ClockDataModel {
  final hour;
  final minute;
  final seconds;
  final temp;
  final weather;
  final highTemp;
  final lowTemp;
  final location;

  static final _model = ClockModel();

  ClockDataModel(this.hour, this.minute, this.seconds, this.temp, this.weather,
      this.highTemp, this.lowTemp, this.location);

  static ClockDataModel getFormattedData(DateTime dateTime) {
    return ClockDataModel(
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        _model.temperature,
        _model.weatherCondition,
        _model.high,
        _model.low,
        _model.location);
  }
}
