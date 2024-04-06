import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_exclusive_offer.dart';
import 'custom_carousel_slider.dart';
import 'custom_text_field_search.dart';
import 'sliver_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const CustomSliverAppBar(),
        ];
      },
      body: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const CustomSearchTextField(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20.sp),
                      const CustomCarouselSlider(),
                      SizedBox(height: 30.sp),
                     const SectionExclusiveOffer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
