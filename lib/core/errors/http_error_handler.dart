import 'package:dio/dio.dart';
import 'app_exceptions.dart';

class HttpErrorHandler {
  static AppException handle(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return TimeoutException();
    }

    if (e.type == DioExceptionType.badResponse && e.response != null) {
      final status = e.response!.statusCode ?? 0;

      switch (status) {
        case 400:
          return BadRequestException();
        case 401:
          return UnauthorizedException();
        case 403:
          return ForbiddenException();
        case 404:
          return NotFoundException();
        case 500:
          return ServerErrorException();
        default:
          return UnknownHttpException();
      }
    }

    return NetworkException(e.message ?? "Erreur réseau");
  }
}
