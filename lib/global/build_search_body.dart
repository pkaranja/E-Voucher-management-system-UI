import 'dart:convert';

String buildRequestBody({
  String? filterKey,
  String? filterOperator,
  String? fieldType,
  String? searchValue,
  String? sortKey,
  String? sortDirection,
  int? page,
  int? size,
}) {
  final filters = [
    if (filterKey != null)
      {
        "key": filterKey,
        "operator": filterOperator ?? "EQUAL",
        "field_type": fieldType ?? "STRING",
        "value": searchValue,
      }
  ];

  final sorts = [
    if (sortKey != null)
      {
        "key": sortKey,
        "direction": sortDirection ?? "ASC",
      }
  ];

  final body = jsonEncode({
    "filters": filters,
    "sorts": sorts,
    "page": page ?? 0,
    "size": size ?? 10,
  });

  return body;
}

