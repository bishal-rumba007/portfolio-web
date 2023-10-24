import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web_app/src/themes/color.dart';

class MobileScaffoldView extends StatefulWidget {
  const MobileScaffoldView({super.key});

  @override
  State<MobileScaffoldView> createState() => _MobileScaffoldViewState();
}

class _MobileScaffoldViewState extends State<MobileScaffoldView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
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
                children: [
                  Container(
                    height: 0.16 * w,
                    width: 0.16 * w,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: AppColor.avatarBackground,
                        borderRadius: BorderRadius.circular(0.3 * w)
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/linkedin.svg",
                    ),
                  ),
                  Container(
                    height: 0.16 * w,
                    width: 0.16 * w,
                    decoration: BoxDecoration(
                        color: AppColor.avatarBackground,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/github.svg",
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.background,
                        BlendMode.color,
                      ),
                      height: 0.04 * w,
                      width: 0.04 * w,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 0.16 * w,
                    width: 0.16 * w,
                    decoration: BoxDecoration(
                      color: AppColor.avatarBackground,
                      borderRadius: BorderRadius.circular(0.3 * w)
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/medium.svg",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.006 * h,),
            SvgPicture.asset("assets/icons/hero.svg"),
            SizedBox(height: 0.02 * h,),
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
                    const Icon(Icons.back_hand, color: Colors.yellow,),
                    SizedBox(width: 0.02 * w,),
                    Text(
                      'Greetings',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.7)
                      )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0.016 * h,),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0.10 * w),
                child: Text(
                  "Bishal \nRumba",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 45
                  )
                ),
              ),
            ),
            SizedBox(height: 0.01 * h,),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0.10 * w),
                child: Text(
                  "Flutter developer · UI/UX Practitioner",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.5)
                  )
                ),
              ),
            ),
            SizedBox(height: 0.012 * h,),
            Padding(
              padding: EdgeInsets.only(left: 0.08 * w),
              child: Row(
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Download CV",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(width: 0.02 * w,),
                        Icon(Icons.file_download_outlined, size: 22, color: Theme.of(context).colorScheme.primary.withOpacity(0.5),)
                      ],
                    ),
                  ),
                  SizedBox(width: 0.05 * w,),
                  OutlinedButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.viber, size: 22, color: Theme.of(context).colorScheme.primary.withOpacity(0.5),),
                        SizedBox(width: 0.02 * w,),
                        Text(
                          "Contact Me",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 0.078 * h,),
            const YearsSection(),
            SizedBox(height: 0.058 * h,),
            AboutMeSection(),
            // const SizedBox(height: 400,),
          ],
        ),
      ),
    );
  }
}


class YearsSection extends StatelessWidget {
  const YearsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 0.28 * h,
          width: 0.68 * w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              width: 1
            )
          ),
          child: Column(
            children: [
              SizedBox(height: 0.08 * h,),
              Icon(
                FontAwesomeIcons.code,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: 0.02 * h,),
              Text(
                '2 years as',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                'Programmer',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(height: 0.04 * h,),
        Container(
          height: 0.28 * h,
          width: 0.68 * w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  width: 1
              )
          ),
          child: Column(
            children: [
              SizedBox(height: 0.08 * h,),
              Icon(
                FontAwesomeIcons.figma,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: 0.02 * h,),
              Text(
                '2 years as',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                'UI|UX Practitioner',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(height: 0.04 * h,),
        Container(
          height: 0.28 * h,
          width: 0.68 * w,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  width: 1
              )
          ),
          child: Column(
            children: [
              SizedBox(height: 0.08 * h,),
              Icon(
                FontAwesomeIcons.archway,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: 0.02 * h,),
              Text(
                '2 plus years of',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                'Experience',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Image.asset("assets/me.png", height: 300, width: 300,),
        ],
      ),
    );
  }
}


