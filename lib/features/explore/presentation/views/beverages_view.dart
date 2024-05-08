import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'widgets/beverages_view_body.dart';

class BeveragesView extends StatelessWidget {
  const BeveragesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Beverages',
            style: Styles.textStyle20,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: BeveragesViewBod(),
        ));
  }
}
