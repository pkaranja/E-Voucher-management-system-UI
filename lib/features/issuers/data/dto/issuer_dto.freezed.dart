// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issuer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IssuerDTO _$IssuerDTOFromJson(Map<String, dynamic> json) {
  return _IssuerDTO.fromJson(json);
}

/// @nodoc
mixin _$IssuerDTO {
  List<DataDTO> get content => throw _privateConstructorUsedError;
  MetaDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssuerDTOCopyWith<IssuerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuerDTOCopyWith<$Res> {
  factory $IssuerDTOCopyWith(IssuerDTO value, $Res Function(IssuerDTO) then) =
      _$IssuerDTOCopyWithImpl<$Res, IssuerDTO>;
  @useResult
  $Res call({List<DataDTO> content, MetaDTO meta});

  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$IssuerDTOCopyWithImpl<$Res, $Val extends IssuerDTO>
    implements $IssuerDTOCopyWith<$Res> {
  _$IssuerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<DataDTO>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res> get meta {
    return $MetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IssuerDTOImplCopyWith<$Res>
    implements $IssuerDTOCopyWith<$Res> {
  factory _$$IssuerDTOImplCopyWith(
          _$IssuerDTOImpl value, $Res Function(_$IssuerDTOImpl) then) =
      __$$IssuerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataDTO> content, MetaDTO meta});

  @override
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$IssuerDTOImplCopyWithImpl<$Res>
    extends _$IssuerDTOCopyWithImpl<$Res, _$IssuerDTOImpl>
    implements _$$IssuerDTOImplCopyWith<$Res> {
  __$$IssuerDTOImplCopyWithImpl(
      _$IssuerDTOImpl _value, $Res Function(_$IssuerDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? meta = null,
  }) {
    return _then(_$IssuerDTOImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<DataDTO>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IssuerDTOImpl implements _IssuerDTO {
  _$IssuerDTOImpl({required final List<DataDTO> content, required this.meta})
      : _content = content;

  factory _$IssuerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssuerDTOImplFromJson(json);

  final List<DataDTO> _content;
  @override
  List<DataDTO> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final MetaDTO meta;

  @override
  String toString() {
    return 'IssuerDTO(content: $content, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuerDTOImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_content), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuerDTOImplCopyWith<_$IssuerDTOImpl> get copyWith =>
      __$$IssuerDTOImplCopyWithImpl<_$IssuerDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssuerDTOImplToJson(
      this,
    );
  }
}

abstract class _IssuerDTO implements IssuerDTO {
  factory _IssuerDTO(
      {required final List<DataDTO> content,
      required final MetaDTO meta}) = _$IssuerDTOImpl;

  factory _IssuerDTO.fromJson(Map<String, dynamic> json) =
      _$IssuerDTOImpl.fromJson;

  @override
  List<DataDTO> get content;
  @override
  MetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$IssuerDTOImplCopyWith<_$IssuerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IssuerDetailDTO _$IssuerDetailDTOFromJson(Map<String, dynamic> json) {
  return _IssuerDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$IssuerDetailDTO {
  DataDTO get content => throw _privateConstructorUsedError;
  MetaDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssuerDetailDTOCopyWith<IssuerDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuerDetailDTOCopyWith<$Res> {
  factory $IssuerDetailDTOCopyWith(
          IssuerDetailDTO value, $Res Function(IssuerDetailDTO) then) =
      _$IssuerDetailDTOCopyWithImpl<$Res, IssuerDetailDTO>;
  @useResult
  $Res call({DataDTO content, MetaDTO meta});

  $DataDTOCopyWith<$Res> get content;
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$IssuerDetailDTOCopyWithImpl<$Res, $Val extends IssuerDetailDTO>
    implements $IssuerDetailDTOCopyWith<$Res> {
  _$IssuerDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as DataDTO,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDTOCopyWith<$Res> get content {
    return $DataDTOCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res> get meta {
    return $MetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IssuerDetailDTOImplCopyWith<$Res>
    implements $IssuerDetailDTOCopyWith<$Res> {
  factory _$$IssuerDetailDTOImplCopyWith(_$IssuerDetailDTOImpl value,
          $Res Function(_$IssuerDetailDTOImpl) then) =
      __$$IssuerDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataDTO content, MetaDTO meta});

  @override
  $DataDTOCopyWith<$Res> get content;
  @override
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$IssuerDetailDTOImplCopyWithImpl<$Res>
    extends _$IssuerDetailDTOCopyWithImpl<$Res, _$IssuerDetailDTOImpl>
    implements _$$IssuerDetailDTOImplCopyWith<$Res> {
  __$$IssuerDetailDTOImplCopyWithImpl(
      _$IssuerDetailDTOImpl _value, $Res Function(_$IssuerDetailDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? meta = null,
  }) {
    return _then(_$IssuerDetailDTOImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as DataDTO,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IssuerDetailDTOImpl implements _IssuerDetailDTO {
  _$IssuerDetailDTOImpl({required this.content, required this.meta});

  factory _$IssuerDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssuerDetailDTOImplFromJson(json);

  @override
  final DataDTO content;
  @override
  final MetaDTO meta;

  @override
  String toString() {
    return 'IssuerDetailDTO(content: $content, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuerDetailDTOImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuerDetailDTOImplCopyWith<_$IssuerDetailDTOImpl> get copyWith =>
      __$$IssuerDetailDTOImplCopyWithImpl<_$IssuerDetailDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssuerDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _IssuerDetailDTO implements IssuerDetailDTO {
  factory _IssuerDetailDTO(
      {required final DataDTO content,
      required final MetaDTO meta}) = _$IssuerDetailDTOImpl;

  factory _IssuerDetailDTO.fromJson(Map<String, dynamic> json) =
      _$IssuerDetailDTOImpl.fromJson;

  @override
  DataDTO get content;
  @override
  MetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$IssuerDetailDTOImplCopyWith<_$IssuerDetailDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataDTO _$DataDTOFromJson(Map<String, dynamic> json) {
  return _DataDTO.fromJson(json);
}

/// @nodoc
mixin _$DataDTO {
  String get id => throw _privateConstructorUsedError;
  AttributeDTO get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDTOCopyWith<DataDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDTOCopyWith<$Res> {
  factory $DataDTOCopyWith(DataDTO value, $Res Function(DataDTO) then) =
      _$DataDTOCopyWithImpl<$Res, DataDTO>;
  @useResult
  $Res call({String id, AttributeDTO attributes});

  $AttributeDTOCopyWith<$Res> get attributes;
}

/// @nodoc
class _$DataDTOCopyWithImpl<$Res, $Val extends DataDTO>
    implements $DataDTOCopyWith<$Res> {
  _$DataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as AttributeDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributeDTOCopyWith<$Res> get attributes {
    return $AttributeDTOCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataDTOImplCopyWith<$Res> implements $DataDTOCopyWith<$Res> {
  factory _$$DataDTOImplCopyWith(
          _$DataDTOImpl value, $Res Function(_$DataDTOImpl) then) =
      __$$DataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, AttributeDTO attributes});

  @override
  $AttributeDTOCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$DataDTOImplCopyWithImpl<$Res>
    extends _$DataDTOCopyWithImpl<$Res, _$DataDTOImpl>
    implements _$$DataDTOImplCopyWith<$Res> {
  __$$DataDTOImplCopyWithImpl(
      _$DataDTOImpl _value, $Res Function(_$DataDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$DataDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as AttributeDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDTOImpl extends _DataDTO {
  _$DataDTOImpl({required this.id, required this.attributes}) : super._();

  factory _$DataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDTOImplFromJson(json);

  @override
  final String id;
  @override
  final AttributeDTO attributes;

  @override
  String toString() {
    return 'DataDTO(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDTOImplCopyWith<_$DataDTOImpl> get copyWith =>
      __$$DataDTOImplCopyWithImpl<_$DataDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDTOImplToJson(
      this,
    );
  }
}

abstract class _DataDTO extends DataDTO {
  factory _DataDTO(
      {required final String id,
      required final AttributeDTO attributes}) = _$DataDTOImpl;
  _DataDTO._() : super._();

  factory _DataDTO.fromJson(Map<String, dynamic> json) = _$DataDTOImpl.fromJson;

  @override
  String get id;
  @override
  AttributeDTO get attributes;
  @override
  @JsonKey(ignore: true)
  _$$DataDTOImplCopyWith<_$DataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDTO _$MetaDTOFromJson(Map<String, dynamic> json) {
  return _MetaDTO.fromJson(json);
}

/// @nodoc
mixin _$MetaDTO {
  PaginationDTO? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDTOCopyWith<MetaDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDTOCopyWith<$Res> {
  factory $MetaDTOCopyWith(MetaDTO value, $Res Function(MetaDTO) then) =
      _$MetaDTOCopyWithImpl<$Res, MetaDTO>;
  @useResult
  $Res call({PaginationDTO? pagination});

  $PaginationDTOCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$MetaDTOCopyWithImpl<$Res, $Val extends MetaDTO>
    implements $MetaDTOCopyWith<$Res> {
  _$MetaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationDTOCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationDTOCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaDTOImplCopyWith<$Res> implements $MetaDTOCopyWith<$Res> {
  factory _$$MetaDTOImplCopyWith(
          _$MetaDTOImpl value, $Res Function(_$MetaDTOImpl) then) =
      __$$MetaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationDTO? pagination});

  @override
  $PaginationDTOCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$MetaDTOImplCopyWithImpl<$Res>
    extends _$MetaDTOCopyWithImpl<$Res, _$MetaDTOImpl>
    implements _$$MetaDTOImplCopyWith<$Res> {
  __$$MetaDTOImplCopyWithImpl(
      _$MetaDTOImpl _value, $Res Function(_$MetaDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_$MetaDTOImpl(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDTOImpl implements _MetaDTO {
  _$MetaDTOImpl({this.pagination});

  factory _$MetaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDTOImplFromJson(json);

  @override
  final PaginationDTO? pagination;

  @override
  String toString() {
    return 'MetaDTO(pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDTOImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDTOImplCopyWith<_$MetaDTOImpl> get copyWith =>
      __$$MetaDTOImplCopyWithImpl<_$MetaDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDTOImplToJson(
      this,
    );
  }
}

abstract class _MetaDTO implements MetaDTO {
  factory _MetaDTO({final PaginationDTO? pagination}) = _$MetaDTOImpl;

  factory _MetaDTO.fromJson(Map<String, dynamic> json) = _$MetaDTOImpl.fromJson;

  @override
  PaginationDTO? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$MetaDTOImplCopyWith<_$MetaDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributeDTO _$AttributeDTOFromJson(Map<String, dynamic> json) {
  return _AttributeDTO.fromJson(json);
}

/// @nodoc
mixin _$AttributeDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int get hits => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get minAmount => throw _privateConstructorUsedError;
  String get maxAmount => throw _privateConstructorUsedError;
  bool get popular => throw _privateConstructorUsedError;
  bool get featured => throw _privateConstructorUsedError;
  ActiveStatus get status => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get primaryColor => throw _privateConstructorUsedError;
  String? get secondaryColor => throw _privateConstructorUsedError;
  String? get primaryFontColor => throw _privateConstructorUsedError;
  String? get secondaryFontColor => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeDTOCopyWith<AttributeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeDTOCopyWith<$Res> {
  factory $AttributeDTOCopyWith(
          AttributeDTO value, $Res Function(AttributeDTO) then) =
      _$AttributeDTOCopyWithImpl<$Res, AttributeDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String phone,
      int hits,
      String logo,
      String minAmount,
      String maxAmount,
      bool popular,
      bool featured,
      ActiveStatus status,
      String? address,
      String? website,
      String? facebook,
      String? instagram,
      String? primaryColor,
      String? secondaryColor,
      String? primaryFontColor,
      String? secondaryFontColor,
      String? description});
}

/// @nodoc
class _$AttributeDTOCopyWithImpl<$Res, $Val extends AttributeDTO>
    implements $AttributeDTOCopyWith<$Res> {
  _$AttributeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? hits = null,
    Object? logo = null,
    Object? minAmount = null,
    Object? maxAmount = null,
    Object? popular = null,
    Object? featured = null,
    Object? status = null,
    Object? address = freezed,
    Object? website = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? primaryColor = freezed,
    Object? secondaryColor = freezed,
    Object? primaryFontColor = freezed,
    Object? secondaryFontColor = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as int,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      minAmount: null == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as String,
      maxAmount: null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as String,
      popular: null == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActiveStatus,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryColor: freezed == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryColor: freezed == secondaryColor
          ? _value.secondaryColor
          : secondaryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryFontColor: freezed == primaryFontColor
          ? _value.primaryFontColor
          : primaryFontColor // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryFontColor: freezed == secondaryFontColor
          ? _value.secondaryFontColor
          : secondaryFontColor // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributeDTOImplCopyWith<$Res>
    implements $AttributeDTOCopyWith<$Res> {
  factory _$$AttributeDTOImplCopyWith(
          _$AttributeDTOImpl value, $Res Function(_$AttributeDTOImpl) then) =
      __$$AttributeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String phone,
      int hits,
      String logo,
      String minAmount,
      String maxAmount,
      bool popular,
      bool featured,
      ActiveStatus status,
      String? address,
      String? website,
      String? facebook,
      String? instagram,
      String? primaryColor,
      String? secondaryColor,
      String? primaryFontColor,
      String? secondaryFontColor,
      String? description});
}

/// @nodoc
class __$$AttributeDTOImplCopyWithImpl<$Res>
    extends _$AttributeDTOCopyWithImpl<$Res, _$AttributeDTOImpl>
    implements _$$AttributeDTOImplCopyWith<$Res> {
  __$$AttributeDTOImplCopyWithImpl(
      _$AttributeDTOImpl _value, $Res Function(_$AttributeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? hits = null,
    Object? logo = null,
    Object? minAmount = null,
    Object? maxAmount = null,
    Object? popular = null,
    Object? featured = null,
    Object? status = null,
    Object? address = freezed,
    Object? website = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? primaryColor = freezed,
    Object? secondaryColor = freezed,
    Object? primaryFontColor = freezed,
    Object? secondaryFontColor = freezed,
    Object? description = freezed,
  }) {
    return _then(_$AttributeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as int,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      minAmount: null == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as String,
      maxAmount: null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as String,
      popular: null == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActiveStatus,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryColor: freezed == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryColor: freezed == secondaryColor
          ? _value.secondaryColor
          : secondaryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryFontColor: freezed == primaryFontColor
          ? _value.primaryFontColor
          : primaryFontColor // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryFontColor: freezed == secondaryFontColor
          ? _value.secondaryFontColor
          : secondaryFontColor // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeDTOImpl implements _AttributeDTO {
  _$AttributeDTOImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.hits,
      required this.logo,
      required this.minAmount,
      required this.maxAmount,
      required this.popular,
      required this.featured,
      required this.status,
      this.address,
      this.website,
      this.facebook,
      this.instagram,
      this.primaryColor,
      this.secondaryColor,
      this.primaryFontColor,
      this.secondaryFontColor,
      this.description});

  factory _$AttributeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final int hits;
  @override
  final String logo;
  @override
  final String minAmount;
  @override
  final String maxAmount;
  @override
  final bool popular;
  @override
  final bool featured;
  @override
  final ActiveStatus status;
  @override
  final String? address;
  @override
  final String? website;
  @override
  final String? facebook;
  @override
  final String? instagram;
  @override
  final String? primaryColor;
  @override
  final String? secondaryColor;
  @override
  final String? primaryFontColor;
  @override
  final String? secondaryFontColor;
  @override
  final String? description;

  @override
  String toString() {
    return 'AttributeDTO(id: $id, name: $name, email: $email, phone: $phone, hits: $hits, logo: $logo, minAmount: $minAmount, maxAmount: $maxAmount, popular: $popular, featured: $featured, status: $status, address: $address, website: $website, facebook: $facebook, instagram: $instagram, primaryColor: $primaryColor, secondaryColor: $secondaryColor, primaryFontColor: $primaryFontColor, secondaryFontColor: $secondaryFontColor, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.hits, hits) || other.hits == hits) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.popular, popular) || other.popular == popular) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.secondaryColor, secondaryColor) ||
                other.secondaryColor == secondaryColor) &&
            (identical(other.primaryFontColor, primaryFontColor) ||
                other.primaryFontColor == primaryFontColor) &&
            (identical(other.secondaryFontColor, secondaryFontColor) ||
                other.secondaryFontColor == secondaryFontColor) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        email,
        phone,
        hits,
        logo,
        minAmount,
        maxAmount,
        popular,
        featured,
        status,
        address,
        website,
        facebook,
        instagram,
        primaryColor,
        secondaryColor,
        primaryFontColor,
        secondaryFontColor,
        description
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeDTOImplCopyWith<_$AttributeDTOImpl> get copyWith =>
      __$$AttributeDTOImplCopyWithImpl<_$AttributeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeDTOImplToJson(
      this,
    );
  }
}

abstract class _AttributeDTO implements AttributeDTO {
  factory _AttributeDTO(
      {required final String id,
      required final String name,
      required final String email,
      required final String phone,
      required final int hits,
      required final String logo,
      required final String minAmount,
      required final String maxAmount,
      required final bool popular,
      required final bool featured,
      required final ActiveStatus status,
      final String? address,
      final String? website,
      final String? facebook,
      final String? instagram,
      final String? primaryColor,
      final String? secondaryColor,
      final String? primaryFontColor,
      final String? secondaryFontColor,
      final String? description}) = _$AttributeDTOImpl;

  factory _AttributeDTO.fromJson(Map<String, dynamic> json) =
      _$AttributeDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  int get hits;
  @override
  String get logo;
  @override
  String get minAmount;
  @override
  String get maxAmount;
  @override
  bool get popular;
  @override
  bool get featured;
  @override
  ActiveStatus get status;
  @override
  String? get address;
  @override
  String? get website;
  @override
  String? get facebook;
  @override
  String? get instagram;
  @override
  String? get primaryColor;
  @override
  String? get secondaryColor;
  @override
  String? get primaryFontColor;
  @override
  String? get secondaryFontColor;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$AttributeDTOImplCopyWith<_$AttributeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
