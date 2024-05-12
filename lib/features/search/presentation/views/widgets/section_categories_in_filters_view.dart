import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';

import 'check_box_item.dart';

class SectionCategoriesInFiltersView extends StatelessWidget {
  const SectionCategoriesInFiltersView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Categories',style: Styles.textStyle24,),
        CheckBoxItem(title: 'Eggs',),
        CheckBoxItem(title: 'Noodles & Pasta',),
        CheckBoxItem(title: 'Chips & Crisps',),
        CheckBoxItem(title: 'Fast Food',),
      ],
    );
  }
}

