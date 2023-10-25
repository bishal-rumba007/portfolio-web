import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
                  width: 1)),
          child: Column(
            children: [
              SizedBox(
                height: 0.08 * h,
              ),
              Icon(
                FontAwesomeIcons.code,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(
                height: 0.02 * h,
              ),
              Text(
                '2 years as',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                'Programmer',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 0.04 * h,
        ),
        Container(
          height: 0.28 * h,
          width: 0.68 * w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  width: 1)),
          child: Column(
            children: [
              SizedBox(
                height: 0.08 * h,
              ),
              Icon(
                FontAwesomeIcons.figma,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(
                height: 0.02 * h,
              ),
              Text(
                '2 years as',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                'UI|UX Practitioner',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 0.04 * h,
        ),
        Container(
          height: 0.28 * h,
          width: 0.68 * w,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  width: 1)),
          child: Column(
            children: [
              SizedBox(
                height: 0.08 * h,
              ),
              Icon(
                FontAwesomeIcons.archway,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(
                height: 0.02 * h,
              ),
              Text(
                '2 plus years of',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                'Experience',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}