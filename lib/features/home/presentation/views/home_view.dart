import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/account/presentation/views/account_view.dart';
import 'package:nectar/features/explore/presentation/views/explore_view.dart';
import 'package:nectar/features/favorites/presentation/views/favorites_view.dart';
import 'package:nectar/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:nectar/features/myCart/presentation/views/cart_view.dart';

import '../../../../constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 75.h,
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              selectedItemColor: kPrimaryColor,
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.storefront),
                  label: 'Shop',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.manage_search),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Card',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Account',
                ),
              ]),
        ),
        body: <Widget>[
          const HomeViewBody(),
          const ExploreView(),
          const CartView(),
          const FavoritesView(),
          const AccountView()
        ][_selectedIndex]);
  }
}
