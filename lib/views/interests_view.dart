import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';
import 'package:lab_activity_1/widgets/gradient_container.dart';
import 'package:lab_activity_1/data/interests_data.dart';

class InterestsView extends StatelessWidget {
  const InterestsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 600;

    return Flex(
      direction: isLargeScreen ? Axis.horizontal : Axis.vertical,
      children: List.generate(interestsList.length, (index) {
        return Expanded(
          child: GradientContainer(
            padding: 25,
            child: Flex(
              direction: isLargeScreen ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(interestsList[index].icon,
                    size: MediaQuery.of(context).size.width * 0.2, color: containerColor),
                ),
                isLargeScreen ? SizedBox(height: 20) : SizedBox(width: 20),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(interestsList[index].interest,
                        style: const TextStyle(fontSize: 16, fontFamily: 'rubik', fontWeight: FontWeight.bold)),
                      Text(interestsList[index].description,
                        style: const TextStyle(fontSize: 14, fontFamily: 'rubik'), textAlign: TextAlign.justify),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
