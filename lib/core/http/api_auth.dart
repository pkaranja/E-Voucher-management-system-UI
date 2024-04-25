import 'dart:convert';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:http/http.dart' as http;

class AuthService {
  FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  late final String baseUrl = remoteConfig.getString('api_base');

   Future<Map<String, String>> getAuthHeader() async {
    // Here you can implement your logic to retrieve the authentication token
    // This is just a placeholder example, replace it with your actual logic
    String token = await fetchAuthToken();

    // Create the header object with the token
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    return headers;
  }

  Future<String> fetchAuthToken() async {
    // Implement your logic to fetch the authentication token from your API
    // For example:
    // Make a POST request to your authentication endpoint
    // Handle the response and extract the token

    // This is just a placeholder example, replace it with your actual logic
    String username = 'your_username';
    String password = 'your_password';

    String token;

    try {
      final response = await http.post(
        Uri.parse('http://$baseUrl/login'),
        body: jsonEncode({'username': username, 'password': password}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        token = responseData['token'];
      } else {
        throw Exception('Failed to fetch token');
      }
    } catch (e) {
      print('Error fetching token: $e');
      throw Exception('Failed to fetch token');
    }

    return token;
  }
}
