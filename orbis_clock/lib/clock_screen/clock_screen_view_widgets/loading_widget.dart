import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/text_widget.dart';

class LoadingCard extends StatelessWidget {
  final String text;

  const LoadingCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: <Widget>[
        Image.asset('assets/load.png'),
        Center(child: TextWidget('$text', 45.0)),
      ],
    ));
  }
}
