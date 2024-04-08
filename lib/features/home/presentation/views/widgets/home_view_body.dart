import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_exclusive_offer.dart';
import 'custom_carousel_slider.dart';
import 'custom_text_field_search.dart';
import 'sliver_appbar.dart';
import 'title_groups_items.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const CustomSliverAppBar(),
          ];
        },
        body: Scaffold(
          body: Column(
            children: [
              SizedBox(height:5.sp),
              const CustomSearchTextField(),
              Column(
                children: [
                  SizedBox(height: 20.sp),
                  const CustomCarouselSlider(),
                  SizedBox(height: 30.sp),
                  TitleGroupsItems(
                    title: 'Exclusive Offer',
                    onPressedSeeAllButton: () {},
                  ),
                  SizedBox(height: 10.sp),
                  SizedBox(
                      height: 250.sp,
                      child: const SectionExclusiveOffer()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
