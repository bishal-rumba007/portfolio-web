import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web_app/src/themes/color.dart';
import 'package:portfolio_web_app/src/widgets/export.dart';


class MobileScaffoldView extends StatefulWidget {
  const MobileScaffoldView({super.key});

  @override
  State<MobileScaffoldView> createState() => _MobileScaffoldViewState();
}

class _MobileScaffoldViewState extends State<MobileScaffoldView> {
  ScrollController scrollController = ScrollController();
  bool showBtn = false;
  @override
  void initState() {
    scrollController.addListener(() {
      double showOffset = 5.0;
      if(scrollController.offset > showOffset){
        showBtn = true;
        setState(() {
          //update state
        });
      }else{
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.2 * w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 0.16 * w,
                    width: 0.16 * w,
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
                    height: 0.18 * w,
                    width: 0.16 * w,
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: AppColor.avatarBackground,
                      size: 0.16 * w,
                    ),
                  ),
                  Container(
                    height: 0.16 * w,
                    width: 0.16 * w,
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
            ),
            SizedBox(
              height: 0.006 * h,
            ),
            SvgPicture.asset("assets/icons/hero.svg"),
            SizedBox(
              height: 0.02 * h,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(left: 0.1 * w),
                padding: const EdgeInsets.all(10),
                height: 0.07 * h,
                width: 0.45 * w,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(0.02 * w),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.back_hand,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 0.02 * w,
                    ),
                    Text('Greetings',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                        ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.016 * h,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0.10 * w),
                child: Text("Bishal \nRumba",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 45,
                        height: 0.9,),
                ),
              ),
            ),
            SizedBox(
              height: 0.01 * h,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0.10 * w),
                child: Text("Flutter developer · UI/UX Practitioner",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ),
            SizedBox(
              height: 0.012 * h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.08 * w),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Download CV",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          width: 0.02 * w,
                        ),
                        Icon(
                          Icons.file_download_outlined,
                          size: 22,
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 0.05 * w,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.viber,
                          size: 22,
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5),
                        ),
                        SizedBox(
                          width: 0.02 * w,
                        ),
                        Text(
                            "Contact Me",
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.5),
                            )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0.078 * h,
            ),
            const ExperienceSection(),
            SizedBox(
              height: 0.078 * h,
            ),
            const AboutMeSection(),
            SizedBox(
              height: 0.05 * h,
            ),
            const PortfolioSection(),
            SizedBox(height: 0.078 * h,),
            const SkillSection(),
            SizedBox(height: 0.078 * h,),
            const CareerSection(),
            SizedBox(height: 0.078 * h,),
            const TestimonialSection(),
            SizedBox(height: 0.078 * h,),
            ContactSection(scrollController: scrollController),
            SizedBox(height: 0.078 * h,),
            const FooterSection(),
          ],
        ),
      ),
      floatingActionButton: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),  //show/hide animation
        opacity: showBtn ? 1.0:0.0,
        child: FloatingActionButton(
          onPressed: () {
            scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn
            );
          },
          backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(
            0.5
          ),
          child: Icon(
            Icons.arrow_upward,
            size: 0.03 * h,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
