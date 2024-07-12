import 'package:flutter/material.dart';
import 'package:lab_activity_1/widgets/gradient_container.dart';
import 'package:lab_activity_1/widgets/circle_container.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 600;

    return Flex(
      direction: isLargeScreen ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          child: GradientContainer(
            padding: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 3),
                Row(
                  children: [
                    Text('I AM',
                      style: TextStyle(fontSize: 16, fontFamily: 'inter', fontWeight: FontWeight.w500)), Spacer(),
                    Icon(Icons.star_border_outlined), Icon(Icons.star),
                  ],
                ), 
                Spacer(flex: 2),
                Text('ANGEL FRANCO',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'inter'),),
                Spacer(flex: 1),
                Text('A 23 year-old aspiring IT professional with a passion for continuous learning and technology innovation!',
                  style: TextStyle(fontSize: 14, fontFamily: 'rubik'), textAlign: TextAlign.justify,),
                Spacer(flex: 2),
                Row(
                  children: [
                    Icon(Icons.star_border_outlined), Icon(Icons.star), Spacer(),
                    Icon(Icons.star), Icon(Icons.star_border_outlined),
                  ],
                ),
                Spacer(flex: 3),
              ], 
            ),
          ),
        ),
        isLargeScreen ? SizedBox(width: 50) : SizedBox(height: 50),
        const Expanded(
          child: CircleContainer(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image(image: AssetImage('lib/assets/images/id.png')),
            ),
          ),
        ),
      ],
    );
  }
}
