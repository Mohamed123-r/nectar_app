import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'widgets/my_cart_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: const Border(
          bottom: BorderSide(
            color: kGreyColor,
            width: 0.5,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: Styles.textStyle20,
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
        child: const MyCartBody(),
      ),
    );
  }
}
