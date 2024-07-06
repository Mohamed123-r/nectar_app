

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/core/api/dio_consumer.dart';
import 'package:nectar/core/api/end_point.dart';

part 'confirm_num_state.dart';

class ConfirmNumCubit extends Cubit<ConfirmNumState> {
  ConfirmNumCubit(this.dio) : super(ConfirmNumInitial());

  final DioConsumer dio;

  List<TextEditingController> num = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];



  confirmNum() async {
    emit(ConfirmNumLoading());

    var response = await dio.get(
        "${EndPoint.confirmNum}?Num=${num[0].text}${num[1].text}${num[2].text}${num[3].text}${num[4].text}${num[5].text}");

    if (response['statusCode'] == 200) {
      emit(ConfirmNumSuccess());

    } else {
      emit(ConfirmNumError());

    }
  }
}
