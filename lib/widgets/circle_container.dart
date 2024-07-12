import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';

class CircleContainer extends StatelessWidget {
  final Widget child;

  const CircleContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(screenWidth * 0.005),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: secondaryColor,
        shape: BoxShape.circle,
        boxShadow: [primaryBoxShadow],
        gradient: primaryRGradient,
      ),
      child: child,
    );
  }
}
