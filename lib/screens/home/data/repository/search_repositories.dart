import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:problem_interview/core/network/dio_exceptions.dart';
import 'package:problem_interview/core/network/dio_helper.dart';
import 'package:problem_interview/screens/home/data/model/search_repositories_model.dart';

abstract class SearchRepositories {
  Future<ResponseFromRequest> searchBySubject(String query);
}

class SearchRepositoriesImpl implements SearchRepositories {
  @override
  Future<ResponseFromRequest> searchBySubject(String query) async {
    try {
      final searchResponse =
          await API().dio.get('search/repositories?q=$query');
      log('searchResponse: ${searchResponse.statusCode} & ${searchResponse.data}');
      final result = SearchRepositoriesModel.fromJson(searchResponse.data);
      List<ViewData> viewData = [];
      for (var item in result.items) {
        ViewData view = ViewData(
            id: item.id,
            avatarURL: item.owner?.avatarUrl,
            fullName: item.fullName,
            description: item.description,
            stargazersCount: item.stargazersCount,
            watchersCount: item.watchersCount,
            htmlURL: item.htmlUrl);
        viewData.add(view);
      }
      return ResponseFromRequest(response: viewData);
    } on DioException catch (error) {
      final errorMessage = DioExceptions.fromDioError(error);
      log('SearchRepositoriesImpl DioError: $errorMessage');
      return ResponseFromRequest(errorMessage: errorMessage);
    } catch (error) {
      log('SearchRepositoriesImpl error: ${error.toString()}');
      return ResponseFromRequest(errorMessage: error.toString());
    }
  }
}

class ResponseFromRequest {
  final dynamic response;
  final String? errorMessage;

  ResponseFromRequest({this.response, this.errorMessage});
}

class ViewData {
  final int id;
  final String? avatarURL;
  final String? fullName;
  final String? htmlURL;
  final String? description;
  final int? stargazersCount;
  final int? watchersCount;

  ViewData(
      {required this.id,
      required this.avatarURL,
      required this.fullName,
      required this.htmlURL,
      required this.description,
      required this.stargazersCount,
      required this.watchersCount});
}
