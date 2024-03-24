import 'package:flutter/material.dart';

import 'sliver_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const CustomSliverAppBar(),
        ];
      },
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
