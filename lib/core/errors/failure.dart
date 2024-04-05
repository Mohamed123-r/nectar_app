import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');
      case DioExceptionType.unknown:
        if (dioException.message == 'SocketException: Failed host lookup: ') {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Something went wrong with ApiServer');
      default:
        return ServerFailure('Something went wrong with ApiServer');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (response.statusCode) {
      case 400:
        return ServerFailure(response.statusMessage);
      case 401:
        return ServerFailure(response.statusMessage);
      case 403:
        return ServerFailure(response.statusMessage);
      case 404:
        return ServerFailure(response.statusMessage);
      case 409:
        return ServerFailure(response.statusMessage);
      case 422:
        return ServerFailure(response.statusMessage);
      case 500:
        return ServerFailure(response.statusMessage);
      default:
        return ServerFailure('Something went wrong with ApiServer');
    }
  }
}
