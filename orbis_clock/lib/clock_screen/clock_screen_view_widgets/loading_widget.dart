import 'package:flutter/material.dart';
import 'package:orbis_clock/clock_screen/clock_screen_view_widgets/text_widget.dart';

class LoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      width: 100,
      child: Center(
        child: Card(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextWidget('Loading clock', 45.0),
              SizedBox(height: 8.0),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
