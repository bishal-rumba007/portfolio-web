import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web_app/src/themes/color.dart';

class TabletScaffoldView extends StatefulWidget {
  const TabletScaffoldView({super.key});

  @override
  State<TabletScaffoldView> createState() => _TabletScaffoldViewState();
}

class _TabletScaffoldViewState extends State<TabletScaffoldView> {
  ScrollController scrollController = ScrollController();
  bool showBtn = false;
  @override
  void initState() {
    scrollController.addListener(() {
      double showOffset = 5.0;
      if (scrollController.offset > showOffset) {
        showBtn = true;
        setState(() {
          //update state
        });
      } else {
        showBtn = false;
        setState(() {
          //update state
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.04 * h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 0.006 * h,
                    ),
                    SvgPicture.asset(
                      "assets/icons/hero.svg",
                      height: 0.5 * h,
                      width: 0.05 * w,
                    ),
                    SizedBox(
                      height: 0.02 * h,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 0.1 * w,
                      width: 0.1 * w,
                      decoration: BoxDecoration(
                          color: AppColor.avatarBackground,
                          borderRadius: BorderRadius.circular(0.3 * w)),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.linkedinIn,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.02 * h,
                    ),
                    SizedBox(
                      height: 0.1 * w,
                      width: 0.1 * w,
                      child: Icon(
                        FontAwesomeIcons.github,
                        color: AppColor.avatarBackground,
                        size: 0.1 * w,
                      ),
                    ),
                    SizedBox(
                      height: 0.02 * h,
                    ),
                    Container(
                      height: 0.1 * w,
                      width: 0.1 * w,
                      decoration: BoxDecoration(
                          color: AppColor.avatarBackground,
                          borderRadius: BorderRadius.circular(0.3 * w)),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.medium,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
