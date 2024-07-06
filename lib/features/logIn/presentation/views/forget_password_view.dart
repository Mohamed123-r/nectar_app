import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/api/dio_consumer.dart';
import 'package:nectar/core/function/validator.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_image_logo.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/features/logIn/presentation/manager/cubits/send_num_cubit.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/bottom_sheet_body_from_send_code.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/forget_password_body.dart';

import '../manager/cubits/send_num_state.dart';

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

