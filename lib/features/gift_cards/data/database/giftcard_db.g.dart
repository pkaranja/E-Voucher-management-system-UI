// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giftcard_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGiftcardDBCollection on Isar {
  IsarCollection<GiftcardDB> get giftcards => this.collection();
}

const GiftcardDBSchema = CollectionSchema(
  name: r'Giftcard',
  id: -2388603881864989367,
  properties: {
    r'code': PropertySchema(
      id: 0,
      name: r'code',
      type: IsarType.string,
    ),
    r'cvv': PropertySchema(
      id: 1,
      name: r'cvv',
      type: IsarType.long,
    ),
    r'dateCreated': PropertySchema(
      id: 2,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'expirationDate': PropertySchema(
      id: 3,
      name: r'expirationDate',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'issuerId': PropertySchema(
      id: 5,
      name: r'issuerId',
      type: IsarType.string,
    ),
    r'lastUpdated': PropertySchema(
      id: 6,
      name: r'lastUpdated',
      type: IsarType.dateTime,
    ),
    r'message': PropertySchema(
      id: 7,
      name: r'message',
      type: IsarType.string,
    ),
    r'purchaserId': PropertySchema(
      id: 8,
      name: r'purchaserId',
      type: IsarType.string,
    ),
    r'recipient': PropertySchema(
      id: 9,
      name: r'recipient',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 10,
      name: r'status',
      type: IsarType.byte,
      enumMap: _GiftcardDBstatusEnumValueMap,
    ),
    r'themeId': PropertySchema(
      id: 11,
      name: r'themeId',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 12,
      name: r'title',
      type: IsarType.string,
    ),
    r'transactionId': PropertySchema(
      id: 13,
      name: r'transactionId',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 14,
      name: r'value',
      type: IsarType.long,
    )
  },
  estimateSize: _giftcardDBEstimateSize,
  serialize: _giftcardDBSerialize,
  deserialize: _giftcardDBDeserialize,
  deserializeProp: _giftcardDBDeserializeProp,
  idName: r'giftcardId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _giftcardDBGetId,
  getLinks: _giftcardDBGetLinks,
  attach: _giftcardDBAttach,
  version: '3.1.0',
);

int _giftcardDBEstimateSize(
  GiftcardDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.code;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.issuerId.length * 3;
  bytesCount += 3 + object.message.length * 3;
  bytesCount += 3 + object.purchaserId.length * 3;
  {
    final value = object.recipient;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  {
    final value = object.transactionId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _giftcardDBSerialize(
  GiftcardDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.code);
  writer.writeLong(offsets[1], object.cvv);
  writer.writeDateTime(offsets[2], object.dateCreated);
  writer.writeDateTime(offsets[3], object.expirationDate);
  writer.writeString(offsets[4], object.id);
  writer.writeString(offsets[5], object.issuerId);
  writer.writeDateTime(offsets[6], object.lastUpdated);
  writer.writeString(offsets[7], object.message);
  writer.writeString(offsets[8], object.purchaserId);
  writer.writeString(offsets[9], object.recipient);
  writer.writeByte(offsets[10], object.status.index);
  writer.writeLong(offsets[11], object.themeId);
  writer.writeString(offsets[12], object.title);
  writer.writeString(offsets[13], object.transactionId);
  writer.writeLong(offsets[14], object.value);
}

GiftcardDB _giftcardDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GiftcardDB();
  object.code = reader.readStringOrNull(offsets[0]);
  object.cvv = reader.readLongOrNull(offsets[1]);
  object.dateCreated = reader.readDateTime(offsets[2]);
  object.expirationDate = reader.readDateTime(offsets[3]);
  object.giftcardId = id;
  object.id = reader.readString(offsets[4]);
  object.issuerId = reader.readString(offsets[5]);
  object.lastUpdated = reader.readDateTime(offsets[6]);
  object.message = reader.readString(offsets[7]);
  object.purchaserId = reader.readString(offsets[8]);
  object.recipient = reader.readStringOrNull(offsets[9]);
  object.status =
      _GiftcardDBstatusValueEnumMap[reader.readByteOrNull(offsets[10])] ??
          GiftcardState.PENDING;
  object.themeId = reader.readLong(offsets[11]);
  object.title = reader.readString(offsets[12]);
  object.transactionId = reader.readStringOrNull(offsets[13]);
  object.value = reader.readLong(offsets[14]);
  return object;
}

P _giftcardDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (_GiftcardDBstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          GiftcardState.PENDING) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _GiftcardDBstatusEnumValueMap = {
  'PENDING': 0,
  'ACTIVE': 1,
  'REDEEMED': 2,
  'EXPIRED': 3,
  'CANCELLED': 4,
  'REFUNDED': 5,
};
const _GiftcardDBstatusValueEnumMap = {
  0: GiftcardState.PENDING,
  1: GiftcardState.ACTIVE,
  2: GiftcardState.REDEEMED,
  3: GiftcardState.EXPIRED,
  4: GiftcardState.CANCELLED,
  5: GiftcardState.REFUNDED,
};

Id _giftcardDBGetId(GiftcardDB object) {
  return object.giftcardId;
}

List<IsarLinkBase<dynamic>> _giftcardDBGetLinks(GiftcardDB object) {
  return [];
}

void _giftcardDBAttach(IsarCollection<dynamic> col, Id id, GiftcardDB object) {
  object.giftcardId = id;
}

extension GiftcardDBQueryWhereSort
    on QueryBuilder<GiftcardDB, GiftcardDB, QWhere> {
  QueryBuilder<GiftcardDB, GiftcardDB, QAfterWhere> anyGiftcardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GiftcardDBQueryWhere
    on QueryBuilder<GiftcardDB, GiftcardDB, QWhereClause> {
  QueryBuilder<GiftcardDB, GiftcardDB, QAfterWhereClause> giftcardIdEqualTo(
      Id giftcardId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: giftcardId,
        upper: giftcardId,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterWhereClause> giftcardIdNotEqualTo(
      Id giftcardId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: giftcardId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: giftcardId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: giftcardId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: giftcardId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterWhereClause> giftcardIdGreaterThan(
      Id giftcardId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: giftcardId, includeLower: include),
      );
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterWhereClause> giftcardIdLessThan(
      Id giftcardId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: giftcardId, includeUpper: include),
      );
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterWhereClause> giftcardIdBetween(
    Id lowerGiftcardId,
    Id upperGiftcardId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerGiftcardId,
        includeLower: includeLower,
        upper: upperGiftcardId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GiftcardDBQueryFilter
    on QueryBuilder<GiftcardDB, GiftcardDB, QFilterCondition> {
  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> cvvIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cvv',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> cvvIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cvv',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> cvvEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cvv',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> cvvGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cvv',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> cvvLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cvv',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> cvvBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cvv',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      dateCreatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      dateCreatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      dateCreatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateCreated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      expirationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      expirationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      expirationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      expirationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expirationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> giftcardIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'giftcardId',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      giftcardIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'giftcardId',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      giftcardIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'giftcardId',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> giftcardIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'giftcardId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      issuerIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issuerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issuerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issuerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      issuerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'issuerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'issuerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'issuerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'issuerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      issuerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuerId',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      issuerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'issuerId',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      lastUpdatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      lastUpdatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      lastUpdatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      lastUpdatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> messageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      messageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> messageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> messageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'message',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> messageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> messageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> messageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> messageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'message',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> messageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      messageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchaserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchaserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchaserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'purchaserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'purchaserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'purchaserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'purchaserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaserId',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'purchaserId',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recipient',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recipient',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> recipientEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recipient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recipient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> recipientLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recipient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> recipientBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recipient',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'recipient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> recipientEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'recipient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> recipientContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'recipient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> recipientMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'recipient',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recipient',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'recipient',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> statusEqualTo(
      GiftcardState value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> statusGreaterThan(
    GiftcardState value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> statusLessThan(
    GiftcardState value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> statusBetween(
    GiftcardState lower,
    GiftcardState upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> themeIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeId',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      themeIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeId',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> themeIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeId',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> themeIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transactionId',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transactionId',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transactionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transactionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transactionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transactionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transactionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transactionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transactionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transactionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transactionId',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transactionId',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> valueEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> valueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> valueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> valueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GiftcardDBQueryObject
    on QueryBuilder<GiftcardDB, GiftcardDB, QFilterCondition> {}

extension GiftcardDBQueryLinks
    on QueryBuilder<GiftcardDB, GiftcardDB, QFilterCondition> {}

extension GiftcardDBQuerySortBy
    on QueryBuilder<GiftcardDB, GiftcardDB, QSortBy> {
  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByCvv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByCvvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy>
      sortByExpirationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByIssuerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuerId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByIssuerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuerId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByPurchaserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaserId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByPurchaserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaserId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByRecipient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipient', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByRecipientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipient', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByThemeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByThemeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByTransactionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByTransactionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension GiftcardDBQuerySortThenBy
    on QueryBuilder<GiftcardDB, GiftcardDB, QSortThenBy> {
  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByCvv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByCvvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy>
      thenByExpirationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByGiftcardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'giftcardId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByGiftcardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'giftcardId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByIssuerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuerId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByIssuerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuerId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByPurchaserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaserId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByPurchaserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaserId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByRecipient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipient', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByRecipientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipient', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByThemeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByThemeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByTransactionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionId', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByTransactionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionId', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension GiftcardDBQueryWhereDistinct
    on QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> {
  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByCvv() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cvv');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expirationDate');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByIssuerId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'issuerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdated');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'message', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByPurchaserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaserId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByRecipient(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recipient', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByThemeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeId');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByTransactionId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transactionId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value');
    });
  }
}

extension GiftcardDBQueryProperty
    on QueryBuilder<GiftcardDB, GiftcardDB, QQueryProperty> {
  QueryBuilder<GiftcardDB, int, QQueryOperations> giftcardIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'giftcardId');
    });
  }

  QueryBuilder<GiftcardDB, String?, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<GiftcardDB, int?, QQueryOperations> cvvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cvv');
    });
  }

  QueryBuilder<GiftcardDB, DateTime, QQueryOperations> dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<GiftcardDB, DateTime, QQueryOperations>
      expirationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expirationDate');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> issuerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'issuerId');
    });
  }

  QueryBuilder<GiftcardDB, DateTime, QQueryOperations> lastUpdatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdated');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'message');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> purchaserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaserId');
    });
  }

  QueryBuilder<GiftcardDB, String?, QQueryOperations> recipientProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recipient');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardState, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<GiftcardDB, int, QQueryOperations> themeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeId');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<GiftcardDB, String?, QQueryOperations> transactionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transactionId');
    });
  }

  QueryBuilder<GiftcardDB, int, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}
