import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';
import 'package:lab_activity_1/widgets/plain_container.dart';
import 'package:lab_activity_1/widgets/gradient_container.dart';
import 'package:lab_activity_1/data/skills_data.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 600;

    return Column(
      children: [
        Row(
          children: [
            _buildSkillsContainer('Personal Skills', personalSkills, isLargeScreen),
            _buildSkillsContainer('Software Skills', softwareSkills, isLargeScreen),
          ],
        ),
        const Expanded(
          child: GradientContainer(
            padding: 25, 
            child: Column(
              children: [
                Text('Seminars and Trainings',
                style: TextStyle(fontSize: 18, fontFamily: 'rubik', fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0),
                Divider(color: textColor),
                SizedBox(height: 10.0),
                Text('TechTalks III: Beyond the Apex "Innovate, Elevate and Integrate: Navigating Technology for Sustainability',
                style: TextStyle(fontSize: 14, fontFamily: 'inter'),),
                SizedBox(height: 15.0),
                Text('Count Her In',
                style: TextStyle(fontSize: 14, fontFamily: 'inter'),),
              ]
            ) 
          ,),
        )
      ],
    );
  }

  Widget _buildSkillsContainer(String title, List<String> skills, bool isLargeScreen) {
    return Expanded(
      child: PlainContainer(
        padding: 25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,
            style: const TextStyle(fontSize: 18, fontFamily: 'rubik', fontWeight: FontWeight.bold, color: primaryColor)),
            const SizedBox(height: 10.0),
            const Divider(color: primaryColor),
            const SizedBox(height: 20),
            _buildSkillsList(skills, isLargeScreen),
            const SizedBox(height: 20),
            const Divider(color: primaryColor),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillsList(List<String> skills, bool isLargeScreen) {
  return SingleChildScrollView(
    scrollDirection: isLargeScreen ? Axis.horizontal : Axis.vertical,
    child: Flex(
      direction: isLargeScreen ? Axis.horizontal : Axis.vertical,
      children: List.generate(skills.length, (index) {
        return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: secondaryColorLight,
            borderRadius: radius,
          ),
          child: Center(
            child: Text(
              skills[index],
              style: const TextStyle(fontSize: 14, fontFamily: 'inter'),
            ),
          ),
        );
      }),
    ),
  );
}

}