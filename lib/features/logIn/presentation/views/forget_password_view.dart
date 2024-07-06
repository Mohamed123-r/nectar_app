

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/core/api/dio_consumer.dart';
import 'package:nectar/features/logIn/presentation/manager/cubits/send_num_cubit.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/forget_password_body.dart';


class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SendNumCubit(
        DioConsumer(dio: Dio()),
      ),
      child: const ForgetPasswordBody(),
    );
  }
}

