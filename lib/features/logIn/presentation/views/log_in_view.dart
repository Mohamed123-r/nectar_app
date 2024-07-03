import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/api/dio_consumer.dart';
import '../manager/cubits/log_in_cubit.dart';
import 'widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInCubit(
        DioConsumer(dio: Dio()),
      ),
      child: const Scaffold(
        body: LogInViewBody(),
      ),
    );
  }
}
