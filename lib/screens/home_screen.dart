import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_current_location.dart';
import 'package:flutter_application_1/widgets/custom_description_box.dart';
import 'package:flutter_application_1/widgets/custom_drawer.dart';
import 'package:flutter_application_1/widgets/custom_sliver_app_bar.dart';
import 'package:flutter_application_1/widgets/custom_tab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

//* works like useEffect in react
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this); //* Length of the tab
  }

//*  Called when this object is removed from the tree permanently.
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home"),
      // ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomSliverAppBar(
              title: CustomTabBar(
                tabController: _tabController,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  //* my current location
                  const CustomCurrentLocation(),

                  //* Description box
                  const CustomDescriptionBox(),
                ],
              ))
        ],
        body: TabBarView(controller: _tabController, children: [
          ListView.builder(
              itemCount: 5, itemBuilder: (context, index) => Text("Home")),
          ListView.builder(
              itemCount: 5, itemBuilder: (context, index) => Text("Settings")),
          ListView.builder(
              itemCount: 5, itemBuilder: (context, index) => Text("Profile")),
        ]),
      ),
    );
  }
}
