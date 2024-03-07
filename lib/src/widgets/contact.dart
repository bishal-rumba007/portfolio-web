import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web_app/src/utils/constants/export.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key, required this.scrollController});
  final ScrollController scrollController;

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
                  width: 0.4 * w,
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(0.02 * w),
                  ),
                  child: Center(
                    child: Text(
                      '📬 Contacts',
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
                "Get in touch \nwith me",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: 1.1,
                    ),
              ),
              SizedBox(
                height: 0.02 * h,
              ),
              SizedBox(
                height: 0.055 * h,
                width: 0.5 * w,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.viber,
                        size: 0.03 * h,
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 0.02 * w,
                      ),
                      Text("Contact Me",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.5),
                                  )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.03 * h,
              ),
              SvgPicture.asset(
                "assets/icons/send.svg",
                height: 0.04 * h,
                width: 0.04 * h,
              ),
              SizedBox(
                height: 0.01 * h,
              ),
              Text(
                "E-mail:",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.5)),
              ),
              Row(
                children: [
                  Text(
                    AppString.email,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 16),
                  ),
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      iconSize: 0.026 * h,
                    ),
                    icon: Icon(
                      Icons.copy,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 0.07 * h,
              ),
              InkWell(
                onTap: () {
                  scrollController.animateTo(0, //scroll offset to go
                      duration: const Duration(
                          milliseconds: 500), //duration of scroll
                      curve: Curves.fastOutSlowIn //scroll type
                      );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Back to the top",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w800,
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
                      Icons.arrow_upward,
                      size: 0.03 * h,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
