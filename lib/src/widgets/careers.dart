import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_web_app/src/utils/constants/experience_list.dart';
import 'package:portfolio_web_app/src/utils/constants/export.dart';




class CareerSection extends StatelessWidget {
  const CareerSection({super.key});

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
                  padding: const EdgeInsets.all(10),
                  height: 0.06 * h,
                  width: 0.39 * w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(0.02 * w),
                  ),
                  child: Center(
                    child: Text('💼 Career',
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
              SizedBox(height: 0.028 * h,),
              Text("Experience \nuntil today",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  height: 1.2,),
              ),
              SizedBox(height: 0.018 * h,),
              Text(
                "Area of \nProfession",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w900
                ),
                textScaleFactor: 1,
              ),
              SizedBox(height: 0.006 * h,),
              Text("2021 · Currently",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        SizedBox(height: 0.02 * h,),
        SizedBox(
          height: 0.2 * h,
          width: double.infinity,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: experience.length,
            itemBuilder: (context, index) {
              final data = experience[index];
              return Container(
                margin: experience[index].title == experience.last.title ? EdgeInsets.symmetric(horizontal: 0.07 * w) :
                EdgeInsets.only(left: 0.07 * w),
                padding: EdgeInsets.all(0.04 * w),
                width: 0.78 * w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                      width: 1,
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.title,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w800,
                        height: 1
                      ),
                    ),
                    SizedBox(height: 0.01 * h,),
                    Text(
                      data.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        height: 1.1
                      ),
                      textScaleFactor: 1,
                    ),
                    SizedBox(height: 0.016 * h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data.duration,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                        Text(
                          "${data.from} · ${data.to}",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 0.03 * h)
      ],
    );
  }
}