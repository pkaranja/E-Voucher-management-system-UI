// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuer_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIssuerDBCollection on Isar {
  IsarCollection<IssuerDB> get issuers => this.collection();
}

const IssuerDBSchema = CollectionSchema(
  name: r'Issuer',
  id: 604781385891367035,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 2,
      name: r'email',
      type: IsarType.string,
    ),
    r'facebook': PropertySchema(
      id: 3,
      name: r'facebook',
      type: IsarType.string,
    ),
    r'featured': PropertySchema(
      id: 4,
      name: r'featured',
      type: IsarType.bool,
    ),
    r'hits': PropertySchema(
      id: 5,
      name: r'hits',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 6,
      name: r'id',
      type: IsarType.string,
    ),
    r'instagram': PropertySchema(
      id: 7,
      name: r'instagram',
      type: IsarType.string,
    ),
    r'logo': PropertySchema(
      id: 8,
      name: r'logo',
      type: IsarType.string,
    ),
    r'maxAmount': PropertySchema(
      id: 9,
      name: r'maxAmount',
      type: IsarType.string,
    ),
    r'minAmount': PropertySchema(
      id: 10,
      name: r'minAmount',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 11,
      name: r'name',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 12,
      name: r'phone',
      type: IsarType.string,
    ),
    r'popular': PropertySchema(
      id: 13,
      name: r'popular',
      type: IsarType.bool,
    ),
    r'primaryColor': PropertySchema(
      id: 14,
      name: r'primaryColor',
      type: IsarType.string,
    ),
    r'primaryFontColor': PropertySchema(
      id: 15,
      name: r'primaryFontColor',
      type: IsarType.string,
    ),
    r'secondaryColor': PropertySchema(
      id: 16,
      name: r'secondaryColor',
      type: IsarType.string,
    ),
    r'secondaryFontColor': PropertySchema(
      id: 17,
      name: r'secondaryFontColor',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 18,
      name: r'status',
      type: IsarType.byte,
      enumMap: _IssuerDBstatusEnumValueMap,
    ),
    r'website': PropertySchema(
      id: 19,
      name: r'website',
      type: IsarType.string,
    )
  },
  estimateSize: _issuerDBEstimateSize,
  serialize: _issuerDBSerialize,
  deserialize: _issuerDBDeserialize,
  deserializeProp: _issuerDBDeserializeProp,
  idName: r'issuerId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _issuerDBGetId,
  getLinks: _issuerDBGetLinks,
  attach: _issuerDBAttach,
  version: '3.1.0',
);

int _issuerDBEstimateSize(
  IssuerDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.facebook;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.id.length * 3;
  {
    final value = object.instagram;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.logo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.maxAmount;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.minAmount;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primaryColor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primaryFontColor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondaryColor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondaryFontColor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.website;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _issuerDBSerialize(
  IssuerDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeString(offsets[1], object.description);
  writer.writeString(offsets[2], object.email);
  writer.writeString(offsets[3], object.facebook);
  writer.writeBool(offsets[4], object.featured);
  writer.writeLong(offsets[5], object.hits);
  writer.writeString(offsets[6], object.id);
  writer.writeString(offsets[7], object.instagram);
  writer.writeString(offsets[8], object.logo);
  writer.writeString(offsets[9], object.maxAmount);
  writer.writeString(offsets[10], object.minAmount);
  writer.writeString(offsets[11], object.name);
  writer.writeString(offsets[12], object.phone);
  writer.writeBool(offsets[13], object.popular);
  writer.writeString(offsets[14], object.primaryColor);
  writer.writeString(offsets[15], object.primaryFontColor);
  writer.writeString(offsets[16], object.secondaryColor);
  writer.writeString(offsets[17], object.secondaryFontColor);
  writer.writeByte(offsets[18], object.status.index);
  writer.writeString(offsets[19], object.website);
}

IssuerDB _issuerDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IssuerDB();
  object.address = reader.readStringOrNull(offsets[0]);
  object.description = reader.readStringOrNull(offsets[1]);
  object.email = reader.readStringOrNull(offsets[2]);
  object.facebook = reader.readStringOrNull(offsets[3]);
  object.featured = reader.readBoolOrNull(offsets[4]);
  object.hits = reader.readLongOrNull(offsets[5]);
  object.id = reader.readString(offsets[6]);
  object.instagram = reader.readStringOrNull(offsets[7]);
  object.issuerId = id;
  object.logo = reader.readStringOrNull(offsets[8]);
  object.maxAmount = reader.readStringOrNull(offsets[9]);
  object.minAmount = reader.readStringOrNull(offsets[10]);
  object.name = reader.readStringOrNull(offsets[11]);
  object.phone = reader.readStringOrNull(offsets[12]);
  object.popular = reader.readBoolOrNull(offsets[13]);
  object.primaryColor = reader.readStringOrNull(offsets[14]);
  object.primaryFontColor = reader.readStringOrNull(offsets[15]);
  object.secondaryColor = reader.readStringOrNull(offsets[16]);
  object.secondaryFontColor = reader.readStringOrNull(offsets[17]);
  object.status =
      _IssuerDBstatusValueEnumMap[reader.readByteOrNull(offsets[18])] ??
          ActiveStatus.ACTIVE;
  object.website = reader.readStringOrNull(offsets[19]);
  return object;
}

P _issuerDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readBoolOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (_IssuerDBstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          ActiveStatus.ACTIVE) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _IssuerDBstatusEnumValueMap = {
  'ACTIVE': 0,
  'INACTIVE': 1,
};
const _IssuerDBstatusValueEnumMap = {
  0: ActiveStatus.ACTIVE,
  1: ActiveStatus.INACTIVE,
};

Id _issuerDBGetId(IssuerDB object) {
  return object.issuerId;
}

List<IsarLinkBase<dynamic>> _issuerDBGetLinks(IssuerDB object) {
  return [];
}

void _issuerDBAttach(IsarCollection<dynamic> col, Id id, IssuerDB object) {
  object.issuerId = id;
}

extension IssuerDBQueryWhereSort on QueryBuilder<IssuerDB, IssuerDB, QWhere> {
  QueryBuilder<IssuerDB, IssuerDB, QAfterWhere> anyIssuerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IssuerDBQueryWhere on QueryBuilder<IssuerDB, IssuerDB, QWhereClause> {
  QueryBuilder<IssuerDB, IssuerDB, QAfterWhereClause> issuerIdEqualTo(
      Id issuerId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: issuerId,
        upper: issuerId,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterWhereClause> issuerIdNotEqualTo(
      Id issuerId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: issuerId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: issuerId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: issuerId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: issuerId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterWhereClause> issuerIdGreaterThan(
      Id issuerId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: issuerId, includeLower: include),
      );
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterWhereClause> issuerIdLessThan(
      Id issuerId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: issuerId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterWhereClause> issuerIdBetween(
    Id lowerIssuerId,
    Id upperIssuerId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIssuerId,
        includeLower: includeLower,
        upper: upperIssuerId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IssuerDBQueryFilter
    on QueryBuilder<IssuerDB, IssuerDB, QFilterCondition> {
  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'facebook',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'facebook',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'facebook',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'facebook',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'facebook',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facebook',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> facebookIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'facebook',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> featuredIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'featured',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> featuredIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'featured',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> featuredEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'featured',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> hitsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hits',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> hitsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hits',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> hitsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hits',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> hitsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hits',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> hitsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hits',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> hitsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hits',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idContains(
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idMatches(
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'instagram',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'instagram',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instagram',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'instagram',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'instagram',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'instagram',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'instagram',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'instagram',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'instagram',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'instagram',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> instagramIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instagram',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      instagramIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'instagram',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> issuerIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuerId',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> issuerIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issuerId',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> issuerIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issuerId',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> issuerIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issuerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'logo',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'logo',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logo',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> logoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logo',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxAmount',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxAmount',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'maxAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'maxAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'maxAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'maxAmount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> maxAmountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      maxAmountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'maxAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minAmount',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minAmount',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'minAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'minAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'minAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'minAmount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> minAmountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      minAmountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'minAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> popularIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'popular',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> popularIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'popular',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> popularEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'popular',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> primaryColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primaryColor',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primaryColor',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> primaryColorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryColorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> primaryColorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> primaryColorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> primaryColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> primaryColorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> primaryColorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primaryFontColor',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primaryFontColor',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryFontColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryFontColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryFontColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      primaryFontColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryFontColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondaryColor',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondaryColor',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> secondaryColorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> secondaryColorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondaryColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondaryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> secondaryColorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondaryColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondaryColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondaryFontColor',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondaryFontColor',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondaryFontColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondaryFontColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondaryFontColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryFontColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition>
      secondaryFontColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondaryFontColor',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> statusEqualTo(
      ActiveStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> statusGreaterThan(
    ActiveStatus value, {
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> statusLessThan(
    ActiveStatus value, {
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> statusBetween(
    ActiveStatus lower,
    ActiveStatus upper, {
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

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'website',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'website',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'website',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'website',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'website',
        value: '',
      ));
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterFilterCondition> websiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'website',
        value: '',
      ));
    });
  }
}

extension IssuerDBQueryObject
    on QueryBuilder<IssuerDB, IssuerDB, QFilterCondition> {}

extension IssuerDBQueryLinks
    on QueryBuilder<IssuerDB, IssuerDB, QFilterCondition> {}

extension IssuerDBQuerySortBy on QueryBuilder<IssuerDB, IssuerDB, QSortBy> {
  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByFacebook() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facebook', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByFacebookDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facebook', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByFeatured() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'featured', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByFeaturedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'featured', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByHits() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hits', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByHitsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hits', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByInstagram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instagram', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByInstagramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instagram', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByLogo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logo', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByLogoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logo', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByMaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAmount', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByMaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAmount', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByMinAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minAmount', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByMinAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minAmount', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByPopular() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popular', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByPopularDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popular', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByPrimaryColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryColor', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByPrimaryColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryColor', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByPrimaryFontColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryFontColor', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByPrimaryFontColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryFontColor', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortBySecondaryColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryColor', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortBySecondaryColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryColor', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortBySecondaryFontColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryFontColor', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy>
      sortBySecondaryFontColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryFontColor', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByWebsite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> sortByWebsiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.desc);
    });
  }
}

extension IssuerDBQuerySortThenBy
    on QueryBuilder<IssuerDB, IssuerDB, QSortThenBy> {
  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByFacebook() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facebook', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByFacebookDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facebook', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByFeatured() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'featured', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByFeaturedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'featured', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByHits() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hits', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByHitsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hits', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByInstagram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instagram', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByInstagramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instagram', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByIssuerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuerId', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByIssuerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuerId', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByLogo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logo', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByLogoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logo', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByMaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAmount', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByMaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAmount', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByMinAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minAmount', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByMinAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minAmount', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByPopular() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popular', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByPopularDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popular', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByPrimaryColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryColor', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByPrimaryColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryColor', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByPrimaryFontColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryFontColor', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByPrimaryFontColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryFontColor', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenBySecondaryColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryColor', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenBySecondaryColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryColor', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenBySecondaryFontColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryFontColor', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy>
      thenBySecondaryFontColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryFontColor', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByWebsite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.asc);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QAfterSortBy> thenByWebsiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.desc);
    });
  }
}

extension IssuerDBQueryWhereDistinct
    on QueryBuilder<IssuerDB, IssuerDB, QDistinct> {
  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByFacebook(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'facebook', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByFeatured() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'featured');
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByHits() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hits');
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByInstagram(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'instagram', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByLogo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByMaxAmount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxAmount', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByMinAmount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minAmount', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByPopular() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'popular');
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByPrimaryColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primaryColor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByPrimaryFontColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primaryFontColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctBySecondaryColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secondaryColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctBySecondaryFontColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secondaryFontColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<IssuerDB, IssuerDB, QDistinct> distinctByWebsite(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'website', caseSensitive: caseSensitive);
    });
  }
}

extension IssuerDBQueryProperty
    on QueryBuilder<IssuerDB, IssuerDB, QQueryProperty> {
  QueryBuilder<IssuerDB, int, QQueryOperations> issuerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'issuerId');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> facebookProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'facebook');
    });
  }

  QueryBuilder<IssuerDB, bool?, QQueryOperations> featuredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'featured');
    });
  }

  QueryBuilder<IssuerDB, int?, QQueryOperations> hitsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hits');
    });
  }

  QueryBuilder<IssuerDB, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> instagramProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'instagram');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> logoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logo');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> maxAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxAmount');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> minAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minAmount');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<IssuerDB, bool?, QQueryOperations> popularProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'popular');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> primaryColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primaryColor');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> primaryFontColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primaryFontColor');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> secondaryColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secondaryColor');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations>
      secondaryFontColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secondaryFontColor');
    });
  }

  QueryBuilder<IssuerDB, ActiveStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<IssuerDB, String?, QQueryOperations> websiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'website');
    });
  }
}
