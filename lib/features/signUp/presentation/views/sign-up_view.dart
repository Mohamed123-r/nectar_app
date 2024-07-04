import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/signUp/presentation/manager/cubits/sign_up_cubit.dart';

import '../../../../core/api/dio_consumer.dart';
import 'widgets/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        DioConsumer(
          dio: Dio(),
        ),
      ),
      child: const Scaffold(
        body: SignUpBody(),
      ),
    );
  }
}
