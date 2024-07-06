import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/core/api/api_consumer.dart';
import 'package:nectar/core/api/end_point.dart';
import 'package:nectar/core/errors/exceptions.dart';

import 'send_num_state.dart';

class SendNumCubit extends Cubit<SendNumState> {
  SendNumCubit(this.api) : super(SendNumInitial());

  final ApiConsumer api;

  TextEditingController sendNumEmail = TextEditingController();

  void sendNum() async {
    emit(SendNumLoading());


    try {
      await api
          .post("${EndPoint.forgetPassword}?sendEmail=${sendNumEmail.text}");
        emit(SendNumSuccess());

    } on ServerException catch (e) {
      log(e.toString());
      emit(SendNumError());
    }
  }
}
