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
    r'issuer': PropertySchema(
      id: 5,
      name: r'issuer',
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
    r'purchaser': PropertySchema(
      id: 8,
      name: r'purchaser',
      type: IsarType.string,
    ),
    r'purchaserName': PropertySchema(
      id: 9,
      name: r'purchaserName',
      type: IsarType.string,
    ),
    r'recipient': PropertySchema(
      id: 10,
      name: r'recipient',
      type: IsarType.string,
    ),
    r'recipientName': PropertySchema(
      id: 11,
      name: r'recipientName',
      type: IsarType.string,
    ),
    r'recipientPhoneNumber': PropertySchema(
      id: 12,
      name: r'recipientPhoneNumber',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 13,
      name: r'status',
      type: IsarType.byte,
      enumMap: _GiftcardDBstatusEnumValueMap,
    ),
    r'theme': PropertySchema(
      id: 14,
      name: r'theme',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 15,
      name: r'title',
      type: IsarType.string,
    ),
    r'transaction': PropertySchema(
      id: 16,
      name: r'transaction',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 17,
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
  bytesCount += 3 + object.code.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.issuer.length * 3;
  bytesCount += 3 + object.message.length * 3;
  bytesCount += 3 + object.purchaser.length * 3;
  bytesCount += 3 + object.purchaserName.length * 3;
  bytesCount += 3 + object.recipient.length * 3;
  bytesCount += 3 + object.recipientName.length * 3;
  bytesCount += 3 + object.recipientPhoneNumber.length * 3;
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.transaction.length * 3;
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
  writer.writeString(offsets[5], object.issuer);
  writer.writeDateTime(offsets[6], object.lastUpdated);
  writer.writeString(offsets[7], object.message);
  writer.writeString(offsets[8], object.purchaser);
  writer.writeString(offsets[9], object.purchaserName);
  writer.writeString(offsets[10], object.recipient);
  writer.writeString(offsets[11], object.recipientName);
  writer.writeString(offsets[12], object.recipientPhoneNumber);
  writer.writeByte(offsets[13], object.status.index);
  writer.writeLong(offsets[14], object.theme);
  writer.writeString(offsets[15], object.title);
  writer.writeString(offsets[16], object.transaction);
  writer.writeLong(offsets[17], object.value);
}

GiftcardDB _giftcardDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GiftcardDB();
  object.code = reader.readString(offsets[0]);
  object.cvv = reader.readLong(offsets[1]);
  object.dateCreated = reader.readDateTime(offsets[2]);
  object.expirationDate = reader.readDateTime(offsets[3]);
  object.giftcardId = id;
  object.id = reader.readString(offsets[4]);
  object.issuer = reader.readString(offsets[5]);
  object.lastUpdated = reader.readDateTime(offsets[6]);
  object.message = reader.readString(offsets[7]);
  object.purchaser = reader.readString(offsets[8]);
  object.purchaserName = reader.readString(offsets[9]);
  object.recipient = reader.readString(offsets[10]);
  object.recipientName = reader.readString(offsets[11]);
  object.recipientPhoneNumber = reader.readString(offsets[12]);
  object.status =
      _GiftcardDBstatusValueEnumMap[reader.readByteOrNull(offsets[13])] ??
          GiftcardState.PENDING;
  object.theme = reader.readLong(offsets[14]);
  object.title = reader.readString(offsets[15]);
  object.transaction = reader.readString(offsets[16]);
  object.value = reader.readLong(offsets[17]);
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
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
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
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (_GiftcardDBstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          GiftcardState.PENDING) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
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
  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> codeEqualTo(
    String value, {
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
    String value, {
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
    String value, {
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
    String lower,
    String upper, {
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> cvvEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cvv',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> cvvGreaterThan(
    int value, {
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
    int value, {
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
    int lower,
    int upper, {
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issuer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'issuer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> issuerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuer',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      issuerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'issuer',
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> purchaserEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchaser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> purchaserLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchaser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> purchaserBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchaser',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'purchaser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> purchaserEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'purchaser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> purchaserContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'purchaser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> purchaserMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'purchaser',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaser',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'purchaser',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaserName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchaserName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchaserName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchaserName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'purchaserName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'purchaserName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'purchaserName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'purchaserName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaserName',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      purchaserNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'purchaserName',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> recipientEqualTo(
    String value, {
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
    String value, {
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
    String value, {
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
    String lower,
    String upper, {
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recipientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recipientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recipientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recipientName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'recipientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'recipientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'recipientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'recipientName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recipientName',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'recipientName',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recipientPhoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recipientPhoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recipientPhoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recipientPhoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'recipientPhoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'recipientPhoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'recipientPhoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'recipientPhoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recipientPhoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      recipientPhoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'recipientPhoneNumber',
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> themeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> themeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'theme',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> themeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'theme',
        value: value,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition> themeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'theme',
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
      transactionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transaction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transaction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transaction',
        value: '',
      ));
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterFilterCondition>
      transactionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transaction',
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByIssuer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuer', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByIssuerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuer', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByPurchaser() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaser', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByPurchaserDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaser', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByPurchaserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaserName', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByPurchaserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaserName', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByRecipientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipientName', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByRecipientNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipientName', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy>
      sortByRecipientPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipientPhoneNumber', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy>
      sortByRecipientPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipientPhoneNumber', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByTransaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transaction', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> sortByTransactionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transaction', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByIssuer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuer', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByIssuerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuer', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByPurchaser() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaser', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByPurchaserDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaser', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByPurchaserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaserName', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByPurchaserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaserName', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByRecipientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipientName', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByRecipientNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipientName', Sort.desc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy>
      thenByRecipientPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipientPhoneNumber', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy>
      thenByRecipientPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recipientPhoneNumber', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByTransaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transaction', Sort.asc);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QAfterSortBy> thenByTransactionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transaction', Sort.desc);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByIssuer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'issuer', caseSensitive: caseSensitive);
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

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByPurchaser(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaser', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByPurchaserName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaserName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByRecipient(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recipient', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByRecipientName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recipientName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct>
      distinctByRecipientPhoneNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recipientPhoneNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'theme');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GiftcardDB, GiftcardDB, QDistinct> distinctByTransaction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transaction', caseSensitive: caseSensitive);
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

  QueryBuilder<GiftcardDB, String, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<GiftcardDB, int, QQueryOperations> cvvProperty() {
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

  QueryBuilder<GiftcardDB, String, QQueryOperations> issuerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'issuer');
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

  QueryBuilder<GiftcardDB, String, QQueryOperations> purchaserProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaser');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> purchaserNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaserName');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> recipientProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recipient');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> recipientNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recipientName');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations>
      recipientPhoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recipientPhoneNumber');
    });
  }

  QueryBuilder<GiftcardDB, GiftcardState, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<GiftcardDB, int, QQueryOperations> themeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'theme');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<GiftcardDB, String, QQueryOperations> transactionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transaction');
    });
  }

  QueryBuilder<GiftcardDB, int, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}
