import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (fff, ddfd) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(59.0),
              child: TextFormField(
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Search Store',
                  filled: true,
                  fillColor: const Color(0xFFF2F3F2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            centerTitle: true,
            elevation: 0,
            title: Image.asset("assets/images/logo.png"),
          ),
        ];
      },
      body: Container(
        color: Colors.white,
      ),
    );
  }
}