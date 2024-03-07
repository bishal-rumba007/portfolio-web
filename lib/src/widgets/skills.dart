import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_web_app/src/utils/constants/export.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.08 * w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(0.008 * w),
                  height: 0.06 * h,
                  width: 0.3 * w,
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(0.02 * w),
                  ),
                  child: Center(
                    child: Text(
                      '🧑‍💻 Skills ',
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
              ),
              SizedBox(
                height: 0.028 * h,
              ),
              Text(
                "Technologies \nand skills",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                    ),
              ),
              SizedBox(
                height: 0.018 * h,
              ),
              Text(
                "Techs I use Day today",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 0.02 * h,
        ),
        SizedBox(
          height: 0.1 * h,
          width: double.infinity,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: techList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: techList[index] == techList.last
                    ? EdgeInsets.symmetric(horizontal: 0.08 * w)
                    : EdgeInsets.only(left: 0.08 * w),
                child: SvgPicture.asset(techList[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
