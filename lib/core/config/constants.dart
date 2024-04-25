import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum SortDirection { ASC, DESC }
enum FieldType { BOOLEAN, CHAR, DATE, DOUBLE, INTEGER, LONG, STRING, ACTIVESTATUS, UUID }
enum FilterOperator { EQUAL, NOT_EQUAL, LIKE, IN, BETWEEN }
enum ActiveStatus { ACTIVE, INACTIVE }
enum IssuerListType { CATEGORY, SEARCH, POPULAR, FEATURED, PURCHASED, RECEIVED }

class Constants {
  static String apiKey = dotenv.env['ZAWADI_API_KEY'] ?? '';
  static String? primaryTitle = dotenv.env['PRIMARY_TITLE'] ?? '';
  static String? secondaryTitle = dotenv.env['SECONDARY_TITLE'] ?? '';
}

class Endpoints {
  late final FirebaseRemoteConfig remoteConfig;
  late final String baseUrl;

  Endpoints() {
    // Initialize common properties
    remoteConfig = FirebaseRemoteConfig.instance;
    _initializeParams();
  }

  Future<void> _initializeParams() async {
    baseUrl = dotenv.env['API_BASE_URL'] ?? remoteConfig.getString('api_base');
  }

  static String categoriesPath = "/api/categories";
  static String issuersPath = "/api/issuers";
  static String giftCardsPath = "/api/giftcards";
  static String usersPath = "/api/users";
  static String transactionsPath = "/api/transactions";
  static String auditPath = "/api/audits";
  static String themesPath = "/api/themes";
}

//Convert string to ENUM
ActiveStatus parseActiveStatus(String status) {
  if (status.toUpperCase() == 'ACTIVE') {
    return ActiveStatus.ACTIVE;
  } else {
    return ActiveStatus.INACTIVE;
  }
}

//Convert ListType to ENUM
IssuerListType parseIssuerListType(String value) {
  for (var enumValue in IssuerListType.values) {
    if (enumValue.toString().split('.').last.toUpperCase() == value.toUpperCase()) {
      return enumValue;
    }
  }
  throw ArgumentError('Invalid IssuerListType: $value');
}