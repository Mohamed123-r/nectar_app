import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      pinned: true,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(59.0),
        child: CustomTextField(),
      ),
      centerTitle: true,
      elevation: 0,
      title: Image.asset("assets/images/logo.png"),
    );
  }
}
