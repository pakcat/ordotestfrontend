import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          HexColor("#526430"),
          HexColor("#3AB648"),
        ],
      ).createShader(bounds),
      child: child,
    );
  }
}
