import 'package:flutter/material.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/section_text_field.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionTextField(),
        ],
      ),
    );
  }
}
