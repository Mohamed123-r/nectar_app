import 'package:flutter/material.dart';
import 'package:nectar/core/utils/assets.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      snap: true,
      centerTitle: true,
      elevation: 0,
      title: Image.asset(Assets.logo),
    );
  }
}
