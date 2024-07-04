import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/core/api/api_consumer.dart';
import 'package:nectar/core/api/end_point.dart';
import 'package:nectar/core/database/cache/cache_helper.dart';
import 'package:nectar/core/errors/exceptions.dart';
import 'package:nectar/features/signUp/data/models/Sign_up_model.dart';
import 'package:nectar/features/signUp/presentation/manager/cubits/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.api,) : super(SignUpInitial());

  final ApiConsumer api;

  SignUpModel? signUpModel;

  GlobalKey<FormState> signUpFormKey = GlobalKey();

  TextEditingController signUpUserName = TextEditingController();

  TextEditingController signUpPhoneNumber = TextEditingController();

  TextEditingController signUpEmail = TextEditingController();

  TextEditingController signUpPassword = TextEditingController();

  TextEditingController signUpConfirmPassword = TextEditingController();


  signUp() async {
    emit(SignUpLoading());
    try {
      final response = await api.post(EndPoint.register, data: {
        ApiKeys.username: signUpUserName.text,
        ApiKeys.phoneNumber: signUpPhoneNumber.text,
        ApiKeys.email: signUpEmail.text,
        ApiKeys.password: signUpPassword.text,
        ApiKeys.confirmPassword: signUpConfirmPassword.text,
      });
      if (response['statusCode'] == 200) {
        emit(SignUpSuccess());
        signUpModel = SignUpModel.fromJson(response);
        CacheHelper()
            .saveData(key: ApiKeys.email, value: signUpModel?.data?.email);
        CacheHelper()
            .saveData(key: ApiKeys.token, value: signUpModel?.data?.token);
        CacheHelper().saveData(key: ApiKeys.id, value: signUpModel?.data?.id);
      } else {
        emit(SignUpError(response['message']));
      }
    } on ServerException catch (e) {
      emit(SignUpError(e.errorModel.errors!.confirmPassword![0]));
    }
  }
}
