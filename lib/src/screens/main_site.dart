import 'package:flutter/material.dart';
import 'package:portfolio_web_app/src/screens/home_page.dart';

class MainSite extends StatefulWidget {
  const MainSite({super.key});

  @override
  State<MainSite> createState() => _MainSiteState();
}

class _MainSiteState extends State<MainSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [HomePage()],
        ),
      ),
    );
  }
}
