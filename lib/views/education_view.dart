import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';
import 'package:lab_activity_1/widgets/gradient_container.dart';
import 'package:lab_activity_1/data/education_data.dart';

class EducationView extends StatelessWidget {
  const EducationView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 600;

    return Flex(
      direction: isLargeScreen ? Axis.horizontal : Axis.vertical,
      children: List.generate(schoolsList.length, (index) {
        return Expanded(
          child: GradientContainer(
            padding: 25,
            child: Flex(
              direction: isLargeScreen ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: containerColor
                  ),
                  child: Image(image: AssetImage(schoolsList[index].logo), width: MediaQuery.of(context).size.width * 0.2,)
                ),
                isLargeScreen ? SizedBox(height: 20) : SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(schoolsList[index].name,
                      style: const TextStyle(fontSize: 16, fontFamily: 'rubik', fontWeight: FontWeight.bold)),
                    Text(schoolsList[index].academicYear,
                      style: const TextStyle(fontSize: 14, fontFamily: 'rubik')),
                    Text(schoolsList[index].achievement,
                      style: const TextStyle(fontSize: 14, fontFamily: 'rubik')),
                    Text(schoolsList[index].specialization,
                      style: const TextStyle(fontSize: 14, fontFamily: 'rubik')),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
