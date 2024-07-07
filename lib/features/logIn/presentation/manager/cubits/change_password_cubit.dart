import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/core/api/api_consumer.dart';
import 'package:nectar/core/api/end_point.dart';

import '../../../../../core/errors/exceptions.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit(
    this.api,
  ) : super(ChangePasswordInitial());

  final ApiConsumer api;

  TextEditingController changePasswordEmail = TextEditingController();
  TextEditingController changePasswordPassword = TextEditingController();
  TextEditingController changePasswordConfirm = TextEditingController();

  Future<void> changePassword() async {
    emit(ChangePasswordLoading());
    try {
      await api.post(EndPoint.changePassword, data: {
        ApiKeys.email: changePasswordEmail.text,
        ApiKeys.password: changePasswordPassword.text,
        ApiKeys.confirmPassword: changePasswordConfirm.text
      });

      emit(ChangePasswordSuccess());
    } on ServerException catch (e) {
      emit(ChangePasswordError(
        e.errorModel.errors!.confirmPassword![0],
      ));
      emit(ChangePasswordError(
        e.errorModel.errors!.password![0],
      ));
    }
  }
}
