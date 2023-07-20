import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class DioExceptions implements Exception {
  static String fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        return GetIt.I.get<AppLocalizations>().cancelFailure;

      case DioExceptionType.connectionTimeout:
        return GetIt.I.get<AppLocalizations>().connectTimeOutFailure;

      case DioExceptionType.connectionError:
        return GetIt.I.get<AppLocalizations>().dioOtherFailure;

      case DioExceptionType.receiveTimeout:
        return GetIt.I.get<AppLocalizations>().receiveTimeOutFailure;

      case DioExceptionType.unknown:
        return handleError(
            dioError.response?.statusCode ?? 0, dioError.response?.data);

      case DioExceptionType.sendTimeout:
        return GetIt.I.get<AppLocalizations>().sendTimeOutFailure;

      default:
        return GetIt.I.get<AppLocalizations>().somethingWentWrongFailure;
    }
  }

  static String handleError(int statusCode, dynamic error) {
    log('statusCode: $statusCode');
    switch (statusCode) {
      case 400:
        return GetIt.I.get<AppLocalizations>().badRequestFailure;
      case 404:
        return GetIt.I.get<AppLocalizations>().notFoundFailure;
      case 500:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
        return GetIt.I.get<AppLocalizations>().badRequestFailure;
      default:
        return GetIt.I.get<AppLocalizations>().somethingWentWrongFailure;
    }
  }
}
