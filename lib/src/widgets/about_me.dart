import 'package:flutter/material.dart';
import 'package:portfolio_web_app/src/utils/constants/export.dart';


class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.08 * w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 0.35 * h,
              width: 0.35 * h,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(0.3 * h),
                  image: const DecorationImage(
                      image: AssetImage("assets/me.png")
                  )
              ),
            ),
          ),
          SizedBox(
            height: 0.03 * h,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 0.06 * h,
            width: 0.42 * w,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(0.02 * w),
            ),
            child: Center(
              child: Text('🧐 About me',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context)
                      .colorScheme
                      .primary
                      .withOpacity(0.7),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0.03 * h,
          ),
          Text(
            AppString.aboutMe,
            style: Theme.of(context).textTheme.bodyMedium,
            textScaleFactor: 1,
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 0.03 * h,
          ),

        ],
      ),
    );
  }
}