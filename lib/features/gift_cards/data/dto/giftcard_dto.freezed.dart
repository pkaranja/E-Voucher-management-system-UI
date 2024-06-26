// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giftcard_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiftcardDTO _$GiftcardDTOFromJson(Map<String, dynamic> json) {
  return _GiftcardDTO.fromJson(json);
}

/// @nodoc
mixin _$GiftcardDTO {
  List<DataDTO> get content => throw _privateConstructorUsedError;
  MetaDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftcardDTOCopyWith<GiftcardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftcardDTOCopyWith<$Res> {
  factory $GiftcardDTOCopyWith(
          GiftcardDTO value, $Res Function(GiftcardDTO) then) =
      _$GiftcardDTOCopyWithImpl<$Res, GiftcardDTO>;
  @useResult
  $Res call({List<DataDTO> content, MetaDTO meta});

  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$GiftcardDTOCopyWithImpl<$Res, $Val extends GiftcardDTO>
    implements $GiftcardDTOCopyWith<$Res> {
  _$GiftcardDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$GiftcardDTOImplCopyWith<$Res>
    implements $GiftcardDTOCopyWith<$Res> {
  factory _$$GiftcardDTOImplCopyWith(
          _$GiftcardDTOImpl value, $Res Function(_$GiftcardDTOImpl) then) =
      __$$GiftcardDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataDTO> content, MetaDTO meta});

  @override
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$GiftcardDTOImplCopyWithImpl<$Res>
    extends _$GiftcardDTOCopyWithImpl<$Res, _$GiftcardDTOImpl>
    implements _$$GiftcardDTOImplCopyWith<$Res> {
  __$$GiftcardDTOImplCopyWithImpl(
      _$GiftcardDTOImpl _value, $Res Function(_$GiftcardDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? meta = null,
  }) {
    return _then(_$GiftcardDTOImpl(
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
class _$GiftcardDTOImpl implements _GiftcardDTO {
  _$GiftcardDTOImpl({required final List<DataDTO> content, required this.meta})
      : _content = content;

  factory _$GiftcardDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftcardDTOImplFromJson(json);

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
    return 'GiftcardDTO(content: $content, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftcardDTOImpl &&
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
  _$$GiftcardDTOImplCopyWith<_$GiftcardDTOImpl> get copyWith =>
      __$$GiftcardDTOImplCopyWithImpl<_$GiftcardDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftcardDTOImplToJson(
      this,
    );
  }
}

abstract class _GiftcardDTO implements GiftcardDTO {
  factory _GiftcardDTO(
      {required final List<DataDTO> content,
      required final MetaDTO meta}) = _$GiftcardDTOImpl;

  factory _GiftcardDTO.fromJson(Map<String, dynamic> json) =
      _$GiftcardDTOImpl.fromJson;

  @override
  List<DataDTO> get content;
  @override
  MetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$GiftcardDTOImplCopyWith<_$GiftcardDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftcardDetailDTO _$GiftcardDetailDTOFromJson(Map<String, dynamic> json) {
  return _GiftcardDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$GiftcardDetailDTO {
  DataDTO get content => throw _privateConstructorUsedError;
  MetaDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftcardDetailDTOCopyWith<GiftcardDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftcardDetailDTOCopyWith<$Res> {
  factory $GiftcardDetailDTOCopyWith(
          GiftcardDetailDTO value, $Res Function(GiftcardDetailDTO) then) =
      _$GiftcardDetailDTOCopyWithImpl<$Res, GiftcardDetailDTO>;
  @useResult
  $Res call({DataDTO content, MetaDTO meta});

  $DataDTOCopyWith<$Res> get content;
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$GiftcardDetailDTOCopyWithImpl<$Res, $Val extends GiftcardDetailDTO>
    implements $GiftcardDetailDTOCopyWith<$Res> {
  _$GiftcardDetailDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$GiftcardDetailDTOImplCopyWith<$Res>
    implements $GiftcardDetailDTOCopyWith<$Res> {
  factory _$$GiftcardDetailDTOImplCopyWith(_$GiftcardDetailDTOImpl value,
          $Res Function(_$GiftcardDetailDTOImpl) then) =
      __$$GiftcardDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataDTO content, MetaDTO meta});

  @override
  $DataDTOCopyWith<$Res> get content;
  @override
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$GiftcardDetailDTOImplCopyWithImpl<$Res>
    extends _$GiftcardDetailDTOCopyWithImpl<$Res, _$GiftcardDetailDTOImpl>
    implements _$$GiftcardDetailDTOImplCopyWith<$Res> {
  __$$GiftcardDetailDTOImplCopyWithImpl(_$GiftcardDetailDTOImpl _value,
      $Res Function(_$GiftcardDetailDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? meta = null,
  }) {
    return _then(_$GiftcardDetailDTOImpl(
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
class _$GiftcardDetailDTOImpl implements _GiftcardDetailDTO {
  _$GiftcardDetailDTOImpl({required this.content, required this.meta});

  factory _$GiftcardDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftcardDetailDTOImplFromJson(json);

  @override
  final DataDTO content;
  @override
  final MetaDTO meta;

  @override
  String toString() {
    return 'GiftcardDetailDTO(content: $content, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftcardDetailDTOImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftcardDetailDTOImplCopyWith<_$GiftcardDetailDTOImpl> get copyWith =>
      __$$GiftcardDetailDTOImplCopyWithImpl<_$GiftcardDetailDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftcardDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _GiftcardDetailDTO implements GiftcardDetailDTO {
  factory _GiftcardDetailDTO(
      {required final DataDTO content,
      required final MetaDTO meta}) = _$GiftcardDetailDTOImpl;

  factory _GiftcardDetailDTO.fromJson(Map<String, dynamic> json) =
      _$GiftcardDetailDTOImpl.fromJson;

  @override
  DataDTO get content;
  @override
  MetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$GiftcardDetailDTOImplCopyWith<_$GiftcardDetailDTOImpl> get copyWith =>
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
  String get code => throw _privateConstructorUsedError;
  int get cvv => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get theme => throw _privateConstructorUsedError;
  String get recipient => throw _privateConstructorUsedError;
  String get recipientName => throw _privateConstructorUsedError;
  String get recipientPhoneNumber => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String get purchaser => throw _privateConstructorUsedError;
  String get purchaserName => throw _privateConstructorUsedError;
  String get transaction => throw _privateConstructorUsedError;
  String get issuer => throw _privateConstructorUsedError;
  GiftcardState get status => throw _privateConstructorUsedError;

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
      String code,
      int cvv,
      DateTime dateCreated,
      DateTime expirationDate,
      DateTime lastUpdated,
      String title,
      String message,
      int theme,
      String recipient,
      String recipientName,
      String recipientPhoneNumber,
      int value,
      String purchaser,
      String purchaserName,
      String transaction,
      String issuer,
      GiftcardState status});
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
    Object? code = null,
    Object? cvv = null,
    Object? dateCreated = null,
    Object? expirationDate = null,
    Object? lastUpdated = null,
    Object? title = null,
    Object? message = null,
    Object? theme = null,
    Object? recipient = null,
    Object? recipientName = null,
    Object? recipientPhoneNumber = null,
    Object? value = null,
    Object? purchaser = null,
    Object? purchaserName = null,
    Object? transaction = null,
    Object? issuer = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as int,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      recipientName: null == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String,
      recipientPhoneNumber: null == recipientPhoneNumber
          ? _value.recipientPhoneNumber
          : recipientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      purchaser: null == purchaser
          ? _value.purchaser
          : purchaser // ignore: cast_nullable_to_non_nullable
              as String,
      purchaserName: null == purchaserName
          ? _value.purchaserName
          : purchaserName // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GiftcardState,
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
      String code,
      int cvv,
      DateTime dateCreated,
      DateTime expirationDate,
      DateTime lastUpdated,
      String title,
      String message,
      int theme,
      String recipient,
      String recipientName,
      String recipientPhoneNumber,
      int value,
      String purchaser,
      String purchaserName,
      String transaction,
      String issuer,
      GiftcardState status});
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
    Object? code = null,
    Object? cvv = null,
    Object? dateCreated = null,
    Object? expirationDate = null,
    Object? lastUpdated = null,
    Object? title = null,
    Object? message = null,
    Object? theme = null,
    Object? recipient = null,
    Object? recipientName = null,
    Object? recipientPhoneNumber = null,
    Object? value = null,
    Object? purchaser = null,
    Object? purchaserName = null,
    Object? transaction = null,
    Object? issuer = null,
    Object? status = null,
  }) {
    return _then(_$AttributeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as int,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      recipientName: null == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String,
      recipientPhoneNumber: null == recipientPhoneNumber
          ? _value.recipientPhoneNumber
          : recipientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      purchaser: null == purchaser
          ? _value.purchaser
          : purchaser // ignore: cast_nullable_to_non_nullable
              as String,
      purchaserName: null == purchaserName
          ? _value.purchaserName
          : purchaserName // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GiftcardState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeDTOImpl implements _AttributeDTO {
  _$AttributeDTOImpl(
      {required this.id,
      required this.code,
      required this.cvv,
      required this.dateCreated,
      required this.expirationDate,
      required this.lastUpdated,
      required this.title,
      required this.message,
      required this.theme,
      required this.recipient,
      required this.recipientName,
      required this.recipientPhoneNumber,
      required this.value,
      required this.purchaser,
      required this.purchaserName,
      required this.transaction,
      required this.issuer,
      required this.status});

  factory _$AttributeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  final int cvv;
  @override
  final DateTime dateCreated;
  @override
  final DateTime expirationDate;
  @override
  final DateTime lastUpdated;
  @override
  final String title;
  @override
  final String message;
  @override
  final int theme;
  @override
  final String recipient;
  @override
  final String recipientName;
  @override
  final String recipientPhoneNumber;
  @override
  final int value;
  @override
  final String purchaser;
  @override
  final String purchaserName;
  @override
  final String transaction;
  @override
  final String issuer;
  @override
  final GiftcardState status;

  @override
  String toString() {
    return 'AttributeDTO(id: $id, code: $code, cvv: $cvv, dateCreated: $dateCreated, expirationDate: $expirationDate, lastUpdated: $lastUpdated, title: $title, message: $message, theme: $theme, recipient: $recipient, recipientName: $recipientName, recipientPhoneNumber: $recipientPhoneNumber, value: $value, purchaser: $purchaser, purchaserName: $purchaserName, transaction: $transaction, issuer: $issuer, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.recipientName, recipientName) ||
                other.recipientName == recipientName) &&
            (identical(other.recipientPhoneNumber, recipientPhoneNumber) ||
                other.recipientPhoneNumber == recipientPhoneNumber) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.purchaser, purchaser) ||
                other.purchaser == purchaser) &&
            (identical(other.purchaserName, purchaserName) ||
                other.purchaserName == purchaserName) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      cvv,
      dateCreated,
      expirationDate,
      lastUpdated,
      title,
      message,
      theme,
      recipient,
      recipientName,
      recipientPhoneNumber,
      value,
      purchaser,
      purchaserName,
      transaction,
      issuer,
      status);

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
      required final String code,
      required final int cvv,
      required final DateTime dateCreated,
      required final DateTime expirationDate,
      required final DateTime lastUpdated,
      required final String title,
      required final String message,
      required final int theme,
      required final String recipient,
      required final String recipientName,
      required final String recipientPhoneNumber,
      required final int value,
      required final String purchaser,
      required final String purchaserName,
      required final String transaction,
      required final String issuer,
      required final GiftcardState status}) = _$AttributeDTOImpl;

  factory _AttributeDTO.fromJson(Map<String, dynamic> json) =
      _$AttributeDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  int get cvv;
  @override
  DateTime get dateCreated;
  @override
  DateTime get expirationDate;
  @override
  DateTime get lastUpdated;
  @override
  String get title;
  @override
  String get message;
  @override
  int get theme;
  @override
  String get recipient;
  @override
  String get recipientName;
  @override
  String get recipientPhoneNumber;
  @override
  int get value;
  @override
  String get purchaser;
  @override
  String get purchaserName;
  @override
  String get transaction;
  @override
  String get issuer;
  @override
  GiftcardState get status;
  @override
  @JsonKey(ignore: true)
  _$$AttributeDTOImplCopyWith<_$AttributeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
