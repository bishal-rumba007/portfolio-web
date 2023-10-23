import 'package:flutter/material.dart';

class TabletScaffoldView extends StatefulWidget {
  const TabletScaffoldView({super.key});

  @override
  State<TabletScaffoldView> createState() => _TabletScaffoldViewState();
}

class _TabletScaffoldViewState extends State<TabletScaffoldView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}
