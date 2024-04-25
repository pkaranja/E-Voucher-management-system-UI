import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:intl/intl.dart';
import 'package:zawadi/global/handlers/error_handler.dart';
import '../global/build_search_body.dart';
import '../models/profile_model.dart';
import '../pages/auth/utils/utils.dart';

class ApiRequests {
  late final FirebaseRemoteConfig remoteConfig;
  late int retries;
  late bool loadRemoteDataSucceed;
  late int maxRetries;
  late int networkRetryDelay;
  late String baseUrl;
  late Map<String, String> headers;
  late final http.Client _client;

  ApiRequests() {
    // Initialize common properties
    remoteConfig = FirebaseRemoteConfig.instance;
    retries = 0;
    loadRemoteDataSucceed = false;

    // Initialize properties from remote config
    maxRetries = remoteConfig.getInt('maxRetries');
    networkRetryDelay = remoteConfig.getInt('networkRetryDelay');
    baseUrl = remoteConfig.getString('api_base');

    // Default Headers
    // TODO: use the api auth file
    headers = {'Content-Type': 'application/json'};

    // Create the HTTP client
    _client = _createHttpClient();
  }

  http.Client _createHttpClient() {
    return http.Client();
  }

  //API Health
  Future<bool> apiHealthCheck() async {
    bool apiHealth = false;
    var url = Uri.http(baseUrl, '/actuator/health');

    try {
      var response = await _client.get(url);

      if (response.statusCode == 200) {
        apiHealth = true;
        loadRemoteDataSucceed = true;
      } else {
        handleError(apiHealthCheck, 'API Health Fail with CODE ${response.statusCode}');
      }
    } catch (e) {
      handleError(e, 'API Health Failure $e');
    }
    return apiHealth;
  }

  //Fetch Profile
  Future<Map<String, dynamic>> fetchProfile(String firebaseUserId) async {
    var url = Uri.http(baseUrl, '/api/users/getByFirebaseId/$firebaseUserId');

    try {
      final response = await _client.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else if (response.statusCode == 404) {
        // User not found
        throw Exception('User not found: ${response.statusCode}');
      } else {
        handleError(fetchProfile, 'Error fetching profile from API with CODE ${response.statusCode}');
        throw Exception('Failed to fetch profile: ${response.statusCode}');
      }
    } catch (e) {
      handleError(e, 'Failed to fetch profile from API');
      throw Exception('Failed to fetch profile: $e');
    }
  }

  //Update Profile
  Future<String> updateProfile(Map<String, dynamic> userData, String firebaseUid) async {
    var url = Uri.http(baseUrl, '/api/users');

    DateTime dateTime = DateFormat("d MMMM yyyy").parse(userData["dateOfBirth"]);
    String formattedDateOfBirth = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS").format(dateTime);

    ProfileModel profileModel = ProfileModel(isEmailVerified: false, complete: false);
    profileModel.externalId = firebaseUid;
    profileModel.address = userData["address"];
    profileModel.lastLogin = apiDateFormatter(DateTime.now());
    profileModel.phoneNumber = userData["phoneNumber"];
    profileModel.giftcardsPurchased = 0;
    profileModel.giftcardsReceived = 0;
    profileModel.status = 'ACTIVE';
    profileModel.firstName = userData["firstName"];
    profileModel.lastName = userData["lastName"];
    profileModel.dateOfBirth = formattedDateOfBirth.toString();
    profileModel.age = userData["age"];
    profileModel.location = '';
    profileModel.gender = 'UNDISCLOSED';
    profileModel.nationality = '';
    profileModel.govtId = '';
    profileModel.govtIdType = '';
    profileModel.region = '';
    profileModel.privacyPolicyConsent = true;
    profileModel.privacyPolicyConsentDate = apiDateFormatter(DateTime.now());
    profileModel.termsAndConditionConsent = true;
    profileModel.termsAndConditionConsentDate = apiDateFormatter(DateTime.now());
    profileModel.isAutopayOn = false;
    profileModel.phoneNumberValidated = false;

    try {
      final body = profileModel.toJsonObject();
      var response = await _client.post(url, headers: headers, body: body);

      if (response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        handleError(fetchProfile, 'Error fetching profile from API with CODE  ${response.statusCode}');
        throw Exception('Failed to fetch profile: ${response.statusCode}');
      }
    } catch (e) {
      handleError(e, 'Failed to fetch profile from API');
      throw Exception('Failed to fetch profile: $e');
    }
  }

  //Fetch Categories
  Future<List<dynamic>> fetchCategories() async {
    List<dynamic> categoryResponseData = [];
    var url = Uri.http(baseUrl, '/api/categories');

    try {
      var response = await _client.get(url);

      if (response.statusCode == 200) {
        categoryResponseData = json.decode(response.body);
        loadRemoteDataSucceed = true;
      } else {
        handleError(fetchCategories, 'Error fetching categories from API with CODE ${response.statusCode}');
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

    if (categoryId != 0 && categoryId != null) {
      url = Uri.parse('http://$baseUrl/api/categories/$categoryId/issuers');
    } else {
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

      var response = await _client.post(url, headers: headers, body: body);

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
