import 'dart:convert';
import 'dart:async';
import 'dart:developer';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_remote_config/firebase_remote_config.dart';

class ApiRequests {
  FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  int retries = 0;
  bool loadRemoteDataSucceed = false;

  late final int maxRetries = remoteConfig.getInt('maxRetries');
  late final int networkRetryDelay = remoteConfig.getInt('networkRetryDelay');
  late final String baseUrl = remoteConfig.getString('api_base');

  Future<List<dynamic>> fetchCategories() async {
    List<dynamic> categoryResponseData = [];
    var url = Uri.http(baseUrl, '/api/categories');

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        categoryResponseData = json.decode(response.body);
        loadRemoteDataSucceed = true;
      } else {
        _handleError(fetchCategories);
      }
    } catch (e) {
      _handleError(fetchCategories);
    }
    return categoryResponseData;
  }

  //Fetch Issuers
  Future<List<dynamic>> fetchIssuers({String? search, String? filter, int? page, int? pageSize}) async {
    List<dynamic> issuersResponseData = [];

    var queryParameters = {
      'status': 'ACTIVE',
      'page': page?.toString(),
      'pageSize': pageSize?.toString(),
      'search': search,
      'filter': filter,
    };

    var url = Uri.http(baseUrl, '/api/issuers', queryParameters);

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        issuersResponseData = json.decode(response.body);
        loadRemoteDataSucceed = true;
      } else {
        _handleError(fetchIssuers);
      }
    } catch (e) {
      _handleError(fetchIssuers);
    }

    return issuersResponseData;
  }



  Future<void> _handleError(Future<List<dynamic>> Function() requestMethod) async {
    if (!loadRemoteDataSucceed && retries < maxRetries) {
      log("Retrying API");
      retries++;
      Future.delayed(Duration(milliseconds: networkRetryDelay), () {
        requestMethod();
        // You can add more retry logic here if needed
      });
    } else {
      //throw Exception('Failed to load data from API');
      await FirebaseCrashlytics.instance.recordError(
          "API Request error on $requestMethod",
          StackTrace.current,
          reason: 'Error fetching data from API'
      );
    }
  }
}
