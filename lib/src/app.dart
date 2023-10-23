import 'package:flutter/material.dart';
import 'package:portfolio_web_app/src/responsive/export.dart';
import 'package:portfolio_web_app/src/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().darkMode,
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffoldView(),
        tabletScaffold: TabletScaffoldView(),
        desktopScaffold: DesktopScaffoldView(),
      ),
    );
  }
}
