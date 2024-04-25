// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryDTO {
  List<DataDTO> get content => throw _privateConstructorUsedError;
  MetaDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDTOCopyWith<CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTOCopyWith<$Res> {
  factory $CategoryDTOCopyWith(
          CategoryDTO value, $Res Function(CategoryDTO) then) =
      _$CategoryDTOCopyWithImpl<$Res, CategoryDTO>;
  @useResult
  $Res call({List<DataDTO> content, MetaDTO meta});

  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res, $Val extends CategoryDTO>
    implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoryDTOImplCopyWith<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  factory _$$CategoryDTOImplCopyWith(
          _$CategoryDTOImpl value, $Res Function(_$CategoryDTOImpl) then) =
      __$$CategoryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataDTO> content, MetaDTO meta});

  @override
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$CategoryDTOImplCopyWithImpl<$Res>
    extends _$CategoryDTOCopyWithImpl<$Res, _$CategoryDTOImpl>
    implements _$$CategoryDTOImplCopyWith<$Res> {
  __$$CategoryDTOImplCopyWithImpl(
      _$CategoryDTOImpl _value, $Res Function(_$CategoryDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? meta = null,
  }) {
    return _then(_$CategoryDTOImpl(
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
class _$CategoryDTOImpl implements _CategoryDTO {
  _$CategoryDTOImpl({required final List<DataDTO> content, required this.meta})
      : _content = content;

  factory _$CategoryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDTOImplFromJson(json);

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
    return 'CategoryDTO(content: $content, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDTOImpl &&
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
  _$$CategoryDTOImplCopyWith<_$CategoryDTOImpl> get copyWith =>
      __$$CategoryDTOImplCopyWithImpl<_$CategoryDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoryDTO implements CategoryDTO {
  factory _CategoryDTO(
      {required final List<DataDTO> content,
      required final MetaDTO meta}) = _$CategoryDTOImpl;

  factory _CategoryDTO.fromJson(Map<String, dynamic> json) =
      _$CategoryDTOImpl.fromJson;

  @override
  List<DataDTO> get content;
  @override
  MetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDTOImplCopyWith<_$CategoryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDetailDTO _$CategoryDetailDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryDetailDTO {
  DataDTO get content => throw _privateConstructorUsedError;
  MetaDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDetailDTOCopyWith<CategoryDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailDTOCopyWith<$Res> {
  factory $CategoryDetailDTOCopyWith(
          CategoryDetailDTO value, $Res Function(CategoryDetailDTO) then) =
      _$CategoryDetailDTOCopyWithImpl<$Res, CategoryDetailDTO>;
  @useResult
  $Res call({DataDTO content, MetaDTO meta});

  $DataDTOCopyWith<$Res> get content;
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$CategoryDetailDTOCopyWithImpl<$Res, $Val extends CategoryDetailDTO>
    implements $CategoryDetailDTOCopyWith<$Res> {
  _$CategoryDetailDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoryDetailDTOImplCopyWith<$Res>
    implements $CategoryDetailDTOCopyWith<$Res> {
  factory _$$CategoryDetailDTOImplCopyWith(_$CategoryDetailDTOImpl value,
          $Res Function(_$CategoryDetailDTOImpl) then) =
      __$$CategoryDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataDTO content, MetaDTO meta});

  @override
  $DataDTOCopyWith<$Res> get content;
  @override
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$CategoryDetailDTOImplCopyWithImpl<$Res>
    extends _$CategoryDetailDTOCopyWithImpl<$Res, _$CategoryDetailDTOImpl>
    implements _$$CategoryDetailDTOImplCopyWith<$Res> {
  __$$CategoryDetailDTOImplCopyWithImpl(_$CategoryDetailDTOImpl _value,
      $Res Function(_$CategoryDetailDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? meta = null,
  }) {
    return _then(_$CategoryDetailDTOImpl(
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
class _$CategoryDetailDTOImpl implements _CategoryDetailDTO {
  _$CategoryDetailDTOImpl({required this.content, required this.meta});

  factory _$CategoryDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDetailDTOImplFromJson(json);

  @override
  final DataDTO content;
  @override
  final MetaDTO meta;

  @override
  String toString() {
    return 'CategoryDetailDTO(content: $content, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailDTOImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDetailDTOImplCopyWith<_$CategoryDetailDTOImpl> get copyWith =>
      __$$CategoryDetailDTOImplCopyWithImpl<_$CategoryDetailDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoryDetailDTO implements CategoryDetailDTO {
  factory _CategoryDetailDTO(
      {required final DataDTO content,
      required final MetaDTO meta}) = _$CategoryDetailDTOImpl;

  factory _CategoryDetailDTO.fromJson(Map<String, dynamic> json) =
      _$CategoryDetailDTOImpl.fromJson;

  @override
  DataDTO get content;
  @override
  MetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDetailDTOImplCopyWith<_$CategoryDetailDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataDTO _$DataDTOFromJson(Map<String, dynamic> json) {
  return _DataDTO.fromJson(json);
}

/// @nodoc
mixin _$DataDTO {
  int get id => throw _privateConstructorUsedError;
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
  $Res call({int id, AttributeDTO attributes});

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
              as int,
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
  $Res call({int id, AttributeDTO attributes});

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
              as int,
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
  final int id;
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
      {required final int id,
      required final AttributeDTO attributes}) = _$DataDTOImpl;
  _DataDTO._() : super._();

  factory _DataDTO.fromJson(Map<String, dynamic> json) = _$DataDTOImpl.fromJson;

  @override
  int get id;
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
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

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
      {int id,
      String name,
      String icon,
      String status,
      String backgroundColor,
      int order});
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
    Object? icon = null,
    Object? status = null,
    Object? backgroundColor = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
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
      {int id,
      String name,
      String icon,
      String status,
      String backgroundColor,
      int order});
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
    Object? icon = null,
    Object? status = null,
    Object? backgroundColor = null,
    Object? order = null,
  }) {
    return _then(_$AttributeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeDTOImpl implements _AttributeDTO {
  _$AttributeDTOImpl(
      {required this.id,
      required this.name,
      required this.icon,
      required this.status,
      this.backgroundColor = 'F0F0F0',
      required this.order});

  factory _$AttributeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final String status;
  @override
  @JsonKey()
  final String backgroundColor;
  @override
  final int order;

  @override
  String toString() {
    return 'AttributeDTO(id: $id, name: $name, icon: $icon, status: $status, backgroundColor: $backgroundColor, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, icon, status, backgroundColor, order);

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
      {required final int id,
      required final String name,
      required final String icon,
      required final String status,
      final String backgroundColor,
      required final int order}) = _$AttributeDTOImpl;

  factory _AttributeDTO.fromJson(Map<String, dynamic> json) =
      _$AttributeDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  String get status;
  @override
  String get backgroundColor;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$AttributeDTOImplCopyWith<_$AttributeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
