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
      body:  SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                CustomSearchTextField(),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: const [
                      Text('Item 1'),
                      Text('Item 2'),
                      Text('Item 3'),
                      Text('Item 4'),
                      Text('Item 5'),
                      Text('Item 6'),
                      Text('Item 7'),
                      Text('Item 8'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
