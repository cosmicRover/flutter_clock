import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/text_widget.dart';

class LoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset('assets/load.png'),
          Center(child: TextWidget('Loading Orbis', 45.0)),
        ],
      )
    );
  }
}
