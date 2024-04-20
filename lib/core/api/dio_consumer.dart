import 'package:dio/dio.dart';
import 'package:nectar/core/api/api_consumer.dart';

class DioConsumer extends ApiConsumer {
  final dio = Dio();

  @override
  Future delete(String path) async {
    try {
      final response = await dio.delete(path);
      return response.data;
    } on DioException catch (e) {


    }
  }

  @override
  Future get(String path) async {
    try {
      final response = await dio.get(path);
      return response.data;
    } on DioException catch (e) {
      // TODO
    }
  }

  @override
  Future patch(String path,
      {Map<String, dynamic>? data, bool formData = false}) async {
    try {
      final response = await dio.patch(path,
          data: formData ? FormData.fromMap(data!) : data);
      return response.data;
    } on DioException catch (e) {
      // TODO
    }
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? data, bool formData = false}) async {
    try {
      final response =
          await dio.post(path, data: formData ? FormData.fromMap(data!) : data);
      return response.data;
    } on DioException catch (e) {
      // TODO
    }
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? data, bool formData = false}) async {
    try {
      final response =
          await dio.put(path, data: formData ? FormData.fromMap(data!) : data);
      return response.data;
    } on DioException catch (e) {
      // TODO
    }
  }
}
