import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web_app/src/themes/color.dart';
import 'package:portfolio_web_app/src/utils/constants/export.dart';



class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Container(
      height: 0.15 * h,
      width: double.infinity,
      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.3 * w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 0.12 * w,
                  width: 0.12 * w,
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
                  height: 0.14 * w,
                  width: 0.12 * w,
                  child: Icon(
                    FontAwesomeIcons.github,
                    color: AppColor.avatarBackground,
                    size: 0.12 * w,
                  ),
                ),
                Container(
                  height: 0.12 * w,
                  width: 0.12 * w,
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
          SizedBox(height: 0.02 * h,),
          Text(
            AppString.copyRightText,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
         const Spacer(),
        ],
      ),
    );
  }
}
