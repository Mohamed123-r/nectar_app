import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'widgets/filters_view_body.dart';

class FiltersView extends StatelessWidget {
  const FiltersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Filters',
          style: Styles.textStyle20,
        ),
        centerTitle: true,
      ),
      body: const FiltersViewBody(),
    );
  }
}
