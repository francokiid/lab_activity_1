import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';
import 'package:lab_activity_1/widgets/circle_container.dart';
import 'package:lab_activity_1/widgets/gradient_container.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 600;

    return Flex(
      direction: isLargeScreen ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          child: CircleContainer(
            child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image(image: AssetImage('lib/assets/images/telephone.png')),
            ),
          ),
        ),
        isLargeScreen ? SizedBox(width: 50) : SizedBox(height: 50),
        const Expanded(
          child: GradientContainer(
            padding: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.emoji_people), Icon(Icons.favorite_border_outlined),
                  ],
                ), 
                Text('GET IN TOUCH',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'inter'),),
                Text('Start a project with me, or just say hello.',
                  style: TextStyle(fontSize: 16.0, fontFamily: 'rubik'), textAlign: TextAlign.justify,),
                SizedBox(height: 20),
                ListTile(
                  contentPadding: EdgeInsets.all(1),
                  trailing: Icon(Icons.phone, size: 15, color: textColor,),
                  title: Text('(+63)939 049 2510', style: TextStyle(fontSize: 14.0, fontFamily: 'rubik'), textAlign: TextAlign.end),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(1),
                  trailing: Icon(Icons.facebook, size: 15, color: textColor),
                  title: Text('www.facebook.com/francokiid', style: TextStyle(fontSize: 14.0, fontFamily: 'rubik'), textAlign: TextAlign.end),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(1),
                  trailing: Icon(Icons.mail, size: 15, color: textColor, ),
                  title: Text('20-00208@g.batstate-u.edu.ph', style: TextStyle(fontSize: 14.0, fontFamily: 'rubik'), textAlign: TextAlign.end),
                ),
              ], 
            ),
          ),
        ),
      ],
    );
  }
}
