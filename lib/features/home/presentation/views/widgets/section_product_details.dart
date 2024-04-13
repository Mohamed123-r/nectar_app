import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';

class SectionProductDetails extends StatelessWidget {
  const SectionProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Naturel Red Apple",
                style: Styles.textStyle24,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: kGreyColor,
                ),
              ),
            ],
          ),
          const CustomTextFromTextField(
            hintText: "1kg, Price",
          ),
        ],
      ),
    );
  }
}
