import 'package:flutter/material.dart';
import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchTextField(),
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
    );
  }
}

