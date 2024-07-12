import 'package:flutter/material.dart';

class InterestsData {
  final IconData icon;
  final String interest;
  final String description;

  InterestsData({
    required this.icon,
    required this.interest,
    required this.description,
  });
}

List<InterestsData> interestsList = [
  InterestsData(
    icon: Icons.draw,
    interest: 'UI/UX Design',
    description: 'I am passionate about creating intuitive and engaging user interfaces and experiences that enhance usability and user satisfaction.'
  ),
  InterestsData(
    icon: Icons.code,
    interest: 'Web Development',
    description: 'I am interested in building scalable and responsive web applications using modern technologies and frameworks.'
  ),
  InterestsData(
    icon: Icons.bar_chart,
    interest: 'Data Analytics',
    description: 'I am fascinated by the process of analyzing data to extract meaningful insights and drive informed decision-making.'
  ),
];