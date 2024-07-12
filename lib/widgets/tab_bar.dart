import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';
import 'package:lab_activity_1/data/tabs_data.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;

  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: radius,
        boxShadow: [primaryBoxShadow],
      ),
      child: TabBar(
        controller: tabController,
        indicator: BoxDecoration(
          borderRadius: radius,
          color: primaryColor,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 0,
        dividerColor: Colors.transparent,
        labelColor: bgColor,
        unselectedLabelColor: primaryColor,
        tabs: tabsList.map((tab) {
          return Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(tab.icon),
                SizedBox(width: 10),
                if ((tabController.index == tabsList.indexOf(tab) && screenWidth > 600))
                  Text(tab.text,
                  style: TextStyle(fontFamily: 'archivoBlack', fontSize: (screenWidth * 0.012))),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
