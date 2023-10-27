import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_web_app/src/utils/constants/export.dart';




class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

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
                  width: 0.4 * w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(0.02 * w),
                  ),
                  child: Center(
                    child: Text('🔗 Portfolio',
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
              Text("Works \nand projects",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  height: 1,),
              ),
            ],
          ),
        ),
        SizedBox(height: 0.03 * h,),
        SizedBox(
          height: 0.45 * h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: myProjects.length,
            itemBuilder: (context, index) {
              final project = myProjects[index];
              return Container(
                margin: index == myProjects.length ? EdgeInsets.only(left: 0.08 * w, right: 0.08 * w) : EdgeInsets.only(left: 0.08 * w),
                padding: EdgeInsets.symmetric(horizontal: 0.06 * w),
                width: 0.75 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                    width: 1,
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.03 * h,),
                    Text(
                      project.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 0.006 * h,),
                    Text(
                      project.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textScaleFactor: 1,
                    ),
                    SizedBox(height: 0.008 * h,),
                    Wrap(
                      runSpacing: 10,
                      spacing: 12,
                      children: List.generate(
                          project.language.length,
                              (index) => Chip(
                                label: Text(project.language[index],),
                              )),
                    ),
                    SizedBox(height: 0.02 * h,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        // child: SvgPicture.asset(project.imgUrl),
                      ),
                    ),
                    SizedBox(height: 0.02 * h,),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}