import 'package:dio/dio.dart';

abstract class Fauilre {
  final String errorMessage;
  const Fauilre(this.errorMessage);
}

class ServerFauilre extends Fauilre {
  ServerFauilre(super.errorMessage);

  factory ServerFauilre.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFauilre('Connection TimeOut With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFauilre('Send TimeOut With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFauilre('Recieve TimeOut With ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFauilre('Opps ,There Was an Error, please try again');
      case DioExceptionType.badResponse:
        return ServerFauilre.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFauilre('Request is canceld With ApiServer');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketExceptions')) {
          return ServerFauilre('No Internet Connection');
        } else {
          return ServerFauilre('UnExpected Error , please try later');
        }
      case DioExceptionType.unknown:
        if (dioException.error == true) {
          return ServerFauilre(dioException.error.toString());
        }else 
        {
          return ServerFauilre('Opps ,There Was an Error, please try again');
        }
      default:
        return ServerFauilre('Opps ,There Was an Error, please try again');
    }
  }

  factory ServerFauilre.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFauilre(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFauilre('Your request is not found ,please try later');
    } else if (statusCode == 500) {
      return ServerFauilre('Internal Server Error , please try again');
    } else {
      return ServerFauilre('Opps ,There Was an Error, please try again');
    }
  }
}
