import 'package:flutter/material.dart';
import 'package:lab_activity_1/constants.dart';
import 'package:lab_activity_1/widgets/tab_bar.dart';
import 'package:lab_activity_1/data/tabs_data.dart';
import 'package:lab_activity_1/views/personal_view.dart';
import 'package:lab_activity_1/views/education_view.dart';
import 'package:lab_activity_1/views/skills_view.dart';
import 'package:lab_activity_1/views/interests_view.dart';
import 'package:lab_activity_1/views/contact_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showText = false;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabsList.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        showText = _tabController.indexIsChanging;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      color: bgColor,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: CustomTabBar(tabController: _tabController),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.07, horizontal: screenWidth * 0.03),
          child: TabBarView(
            controller: _tabController,
            children: const [
              PersonalInfoView(),
              EducationView(),
              SkillsView(),
              InterestsView(),
              ContactView()
            ],
          ),
        ),
      ),
    );
  }
}
