
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/core/api/api_consumer.dart';
import 'package:nectar/core/api/end_point.dart';
import 'package:nectar/core/database/cache/cache_helper.dart';
import 'package:nectar/core/errors/exceptions.dart';
import 'package:nectar/features/logIn/data/models/log_in_model.dart';

import 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit(
    this.api,
  ) : super(LogInInitial());

  final ApiConsumer api;

  LogInModel? logInModel;

  //Log in Form key
  GlobalKey<FormState> logInFormKey = GlobalKey();

  //Log in  email
  TextEditingController logInEmail = TextEditingController();

  //Log in  password
  TextEditingController logInPassword = TextEditingController();




  logIN() async {
    emit(LogInLoading());
    try {
      final response = await api.post(EndPoint.login, data: {
        ApiKeys.email: logInEmail.text,
        ApiKeys.password: logInPassword.text,
      });
      if (response['statusCode'] == 200) {
        emit(LogInSuccess());
        logInModel = LogInModel.fromJson(response);
        CacheHelper().saveData(key: ApiKeys.email, value: logInModel?.data?.email);
        CacheHelper().saveData(key: ApiKeys.token, value: logInModel?.data?.token);
        CacheHelper().saveData(key: ApiKeys.id, value: logInModel?.data?.id);
      }else{
        emit(LogInError(response['message']));
      }
    } on ServerException catch (e) {
      emit(LogInError(e.errorModel.errors!.confirmPassword![0]));
    }
  }
}
