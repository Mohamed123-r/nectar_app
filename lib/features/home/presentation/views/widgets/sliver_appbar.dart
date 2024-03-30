import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_text_field.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      pinned: true,
      bottom:  PreferredSize(
        preferredSize: Size.fromHeight(59.0.sp),
        child: const CustomTextField(),
      ),
      centerTitle: true,
      elevation: 0,
      title: Image.asset(Assets.logo),
    );
  }
}
