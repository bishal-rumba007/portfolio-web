import 'package:flutter/material.dart';

class DesktopScaffoldView extends StatelessWidget {
  const DesktopScaffoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
