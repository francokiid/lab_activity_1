import 'package:flutter/material.dart';

const Color primaryColor = Color.fromRGBO(255,69,27,1.0);
const Color secondaryColor = Color.fromRGBO(255,179,36,1.0);
const Color primaryColorLight = Color.fromRGBO(255,69,27,0.3);
const Color secondaryColorLight = Color.fromRGBO(255,179,36,0.3);
const Color bgColor = Color.fromRGBO(241,250,255,1.0);
const Color containerColor = Color.fromRGBO(255,255,255,1.0);
const Color shadowColor = Color.fromRGBO(158, 158, 158, 0.5);
const Color textColor = Color.fromRGBO(29,27,32, 1.0);

const Gradient primaryRGradient = RadialGradient(
  colors: [containerColor, primaryColor, secondaryColor],
  center: Alignment.topLeft,
  radius: 1.0
);

const Gradient secondaryRGradient = RadialGradient(
  colors: [containerColor, secondaryColor, primaryColor],
  center: Alignment.center,
  radius: 0.5
);

const BoxShadow primaryBoxShadow = BoxShadow(
  color: shadowColor,
  spreadRadius: 4,
  blurRadius: 7,
  offset: Offset(0, 1),
);

BorderRadiusGeometry radius = BorderRadius.circular(20.0);