import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class TitleGroupsItems extends StatelessWidget {
  const TitleGroupsItems({
    super.key,
    required this.title,
    required this.onPressedSeeAllButton,
  });

  final String title;
  final Function() onPressedSeeAllButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle24,
        ),
        TextButton(
          onPressed: onPressedSeeAllButton,
          child: Text(
            "See all",
            style: Styles.textStyle16.copyWith(
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
