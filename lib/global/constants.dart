enum SortDirection { ASC, DESC }
enum FieldType { BOOLEAN, CHAR, DATE, DOUBLE, INTEGER, LONG, STRING, ACTIVESTATUS, UUID }
enum FilterOperator { EQUAL, NOT_EQUAL, LIKE, IN, BETWEEN }
enum ActiveStatus { ACTIVE, INACTIVE }
enum IssuerListType { CATEGORY, SEARCH, POPULAR, FEATURED, PURCHASED, RECEIVED }


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
