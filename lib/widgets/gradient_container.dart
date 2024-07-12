import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';

class GradientContainer extends StatelessWidget {
  final double padding;
  final Widget child;

  const GradientContainer({super.key, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.005),
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: radius,
          boxShadow: [primaryBoxShadow],
          gradient: primaryRGradient,
        ),
        child: child,
      ),
    );
  }
}
