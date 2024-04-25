// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageable_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageableDTO _$PageableDTOFromJson(Map<String, dynamic> json) {
  return _PageableDTO.fromJson(json);
}

/// @nodoc
mixin _$PageableDTO {
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  PaginationSortDTO get sort => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;
  bool get unpaged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableDTOCopyWith<PageableDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableDTOCopyWith<$Res> {
  factory $PageableDTOCopyWith(
          PageableDTO value, $Res Function(PageableDTO) then) =
      _$PageableDTOCopyWithImpl<$Res, PageableDTO>;
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      PaginationSortDTO sort,
      int offset,
      bool paged,
      bool unpaged});

  $PaginationSortDTOCopyWith<$Res> get sort;
}

/// @nodoc
class _$PageableDTOCopyWithImpl<$Res, $Val extends PageableDTO>
    implements $PageableDTOCopyWith<$Res> {
  _$PageableDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? sort = null,
    Object? offset = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as PaginationSortDTO,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationSortDTOCopyWith<$Res> get sort {
    return $PaginationSortDTOCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageableDTOImplCopyWith<$Res>
    implements $PageableDTOCopyWith<$Res> {
  factory _$$PageableDTOImplCopyWith(
          _$PageableDTOImpl value, $Res Function(_$PageableDTOImpl) then) =
      __$$PageableDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      PaginationSortDTO sort,
      int offset,
      bool paged,
      bool unpaged});

  @override
  $PaginationSortDTOCopyWith<$Res> get sort;
}

/// @nodoc
class __$$PageableDTOImplCopyWithImpl<$Res>
    extends _$PageableDTOCopyWithImpl<$Res, _$PageableDTOImpl>
    implements _$$PageableDTOImplCopyWith<$Res> {
  __$$PageableDTOImplCopyWithImpl(
      _$PageableDTOImpl _value, $Res Function(_$PageableDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? sort = null,
    Object? offset = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_$PageableDTOImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as PaginationSortDTO,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableDTOImpl implements _PageableDTO {
  _$PageableDTOImpl(
      {required this.pageNumber,
      required this.pageSize,
      required this.sort,
      required this.offset,
      required this.paged,
      required this.unpaged});

  factory _$PageableDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableDTOImplFromJson(json);

  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final PaginationSortDTO sort;
  @override
  final int offset;
  @override
  final bool paged;
  @override
  final bool unpaged;

  @override
  String toString() {
    return 'PageableDTO(pageNumber: $pageNumber, pageSize: $pageSize, sort: $sort, offset: $offset, paged: $paged, unpaged: $unpaged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableDTOImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pageNumber, pageSize, sort, offset, paged, unpaged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableDTOImplCopyWith<_$PageableDTOImpl> get copyWith =>
      __$$PageableDTOImplCopyWithImpl<_$PageableDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageableDTOImplToJson(
      this,
    );
  }
}

abstract class _PageableDTO implements PageableDTO {
  factory _PageableDTO(
      {required final int pageNumber,
      required final int pageSize,
      required final PaginationSortDTO sort,
      required final int offset,
      required final bool paged,
      required final bool unpaged}) = _$PageableDTOImpl;

  factory _PageableDTO.fromJson(Map<String, dynamic> json) =
      _$PageableDTOImpl.fromJson;

  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  PaginationSortDTO get sort;
  @override
  int get offset;
  @override
  bool get paged;
  @override
  bool get unpaged;
  @override
  @JsonKey(ignore: true)
  _$$PageableDTOImplCopyWith<_$PageableDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
