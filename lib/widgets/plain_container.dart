import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';

class PlainContainer extends StatelessWidget {
  final double padding;
  final Widget child;

  const PlainContainer({super.key, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.005),
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: radius,
          boxShadow: const [primaryBoxShadow],
          color: bgColor,
        ),
        child: child,
      ),
    );
  }
}
