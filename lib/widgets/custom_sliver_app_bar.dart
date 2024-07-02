import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const CustomSliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    //* Sliver app bar if you want the page to be scrollable and have an effect to hide the app bar while scrolling
    return SliverAppBar(
      centerTitle: true, //* To center title - Works both android and ios
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned:
          true, //* App bar will stay put no matter how many scroll user does
      actions: [
        // Cart button
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Sunset Diner"), //* App bar title
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child, //* Widgets under this sliver appbar widget
        ),
        title: title, //* title for the Flexible space bar under the app bar
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
