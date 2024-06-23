import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;

  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          //* 1st Tab. Home
          Tab(
            icon: Icon(Icons.home),
          ),
          //* 2nd Tab. Settings
          Tab(
            icon: Icon(Icons.settings),
          ),

          //* 3rd Tab. Settings
          Tab(
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
