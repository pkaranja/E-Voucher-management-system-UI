import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:zawadi/global/error_handler.dart';

import '../global/build_search_body.dart';

class ApiRequests {
  FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  int retries = 0;
  bool loadRemoteDataSucceed = false;

  late final int maxRetries = remoteConfig.getInt('maxRetries');
  late final int networkRetryDelay = remoteConfig.getInt('networkRetryDelay');
  late final String baseUrl = remoteConfig.getString('api_base');

  //Default Headers
  //TODO: use the api auth file
  final headers = {'Content-Type': 'application/json', };

  //Fetch Categories
  Future<List<dynamic>> fetchCategories() async {
    List<dynamic> categoryResponseData = [];
    var url = Uri.http(baseUrl, '/api/categories');

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        categoryResponseData = json.decode(response.body);
        loadRemoteDataSucceed = true;
      } else {
        handleError(fetchCategories, 'Error fetching categories from API with CODE $response.statusCode');
      }
    } catch (e) {
      handleError(e, 'Error fetching categories');
    }
    return categoryResponseData;
  }

  //Fetch Issuers
  Future<Map<String, dynamic>> fetchIssuers({
    String? filterKey,
    String? filterOperator,
    String? fieldType,
    String? searchValue,
    String? sortKey,
    String? sortDirection,
    int? page,
    int? size,
    int? categoryId
  }) async {

    Uri url;

    if ( categoryId != 0 && categoryId != null  ) {
      url = Uri.parse('http://$baseUrl/api/categories/$categoryId/issuers');
    }else{
      url = Uri.parse('http://$baseUrl/api/issuers');
    }

    try {
      // Get authentication headers
      final body = buildRequestBody(
        filterKey: filterKey,
        filterOperator: filterOperator,
        fieldType: fieldType,
        searchValue: searchValue,
        sortKey: sortKey,
        sortDirection: sortDirection,
        page: page,
        size: size,
      );

      var response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        Map<String, dynamic> issuersResponseData = json.decode(response.body);
        return issuersResponseData; // Return the data on success
      } else {
        // Handle error response
        handleError('Failed to fetch issuers.', 'Status code: ${response.statusCode}');
        throw Exception('Failed to fetch issuers');
      }
    } catch (e) {
      // Handle network or server errors
      handleError(e, 'Failed to fetch issuers');
      throw Exception('Failed to fetch issuers');
    }
  }
}
