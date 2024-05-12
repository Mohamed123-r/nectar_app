import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';

import 'check_box_item.dart';

class SectionBrandInFiltersView extends StatelessWidget {
  const SectionBrandInFiltersView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Brand',style: Styles.textStyle24,),
        CheckBoxItem(title: 'Individual Callection',),
        CheckBoxItem(title: 'Cocola',),
        CheckBoxItem(title: 'Ifad',),
        CheckBoxItem(title: 'Kazi Farmas',),
      ],
    );
  }
}

