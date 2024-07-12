import 'package:flutter/material.dart';

class MyData {
  final IconData icon;
  final String text;

  const MyData({required this.icon, required this.text});
}

const List<MyData> tabsList = [
    MyData(icon: Icons.info, text: 'ABOUT ME'),
    MyData(icon: Icons.school, text: 'EDUCATION'),
    MyData(icon: Icons.lightbulb, text: 'SKILLS'),
    MyData(icon: Icons.favorite, text: 'INTERESTS'),
    MyData(icon: Icons.alternate_email, text: 'CONTACT'),
];
