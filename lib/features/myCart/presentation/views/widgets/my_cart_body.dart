import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'list_view_item_cart.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: index == 19
              ? EdgeInsets.only(top: 16.sp, bottom: 80.sp)
              : EdgeInsets.symmetric(vertical: 16.0.sp),
          child: const ListViewItemCart(),
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: CustomButton(
          text: 'Go to Checkout',
          onPressed: () {},
        ),
      ),
    ]);
  }
}
