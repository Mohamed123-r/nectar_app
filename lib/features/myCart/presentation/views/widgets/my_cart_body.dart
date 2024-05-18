import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'list_view_item_cart.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0.sp),
        child: const ListViewItemCart(),
      ),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
