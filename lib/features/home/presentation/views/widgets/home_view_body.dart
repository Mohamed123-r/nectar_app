import 'package:flutter/material.dart';
import 'custom_text_field_search.dart';
import 'sliver_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const CustomSliverAppBar(),
        ];
      },
      body: const SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomSearchTextField(),
        ),
      ),
    );
  }
}
