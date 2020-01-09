import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlareAnimatedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return FlareActor(
      "assets/flare_animations/demo.flr",
      fit: BoxFit.contain,
      animation: "demo",
    );
  }

}