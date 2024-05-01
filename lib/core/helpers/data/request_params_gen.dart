import '../../config/constants.dart';

final Map<IssuerListType, Map<String, dynamic>> requestParams = {
  IssuerListType.CATEGORY: {
    'fieldType': FieldType.STRING,
    'filterKey': 'category',
    'filterOperator': FilterOperator.EQUAL,
  },
  IssuerListType.SEARCH: {
    'fieldType': FieldType.STRING,
    'filterOperator': FilterOperator.LIKE,
  },
  IssuerListType.POPULAR: {
    'fieldType': FieldType.BOOLEAN,
    'filterKey': 'popular',
    'searchValue': 'true',
    'filterOperator': FilterOperator.EQUAL,
  },
  IssuerListType.FEATURED: {
    'fieldType': FieldType.BOOLEAN,
    'filterKey': 'featured',
    'searchValue': 'true',
    'filterOperator': FilterOperator.EQUAL,
  },
  IssuerListType.PURCHASED: {},
  IssuerListType.RECEIVED: {},
};