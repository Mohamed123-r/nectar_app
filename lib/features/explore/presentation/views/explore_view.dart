import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_field_search.dart';
import 'package:nectar/features/explore/presentation/views/widgets/explore_view_body.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Products',
          style: Styles.textStyle20,
        ),
        centerTitle: true,
      ),
      body:  ExploreViewBody(),
    );
  }
}
