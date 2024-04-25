// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationDTO _$PaginationDTOFromJson(Map<String, dynamic> json) {
  return _PaginationDTO.fromJson(json);
}

/// @nodoc
mixin _$PaginationDTO {
  PageableDTO get pageable => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  PaginationSortDTO get sort => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationDTOCopyWith<PaginationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDTOCopyWith<$Res> {
  factory $PaginationDTOCopyWith(
          PaginationDTO value, $Res Function(PaginationDTO) then) =
      _$PaginationDTOCopyWithImpl<$Res, PaginationDTO>;
  @useResult
  $Res call(
      {PageableDTO pageable,
      int totalPages,
      int totalElements,
      bool last,
      int size,
      int number,
      PaginationSortDTO sort,
      int numberOfElements,
      bool first,
      bool empty});

  $PageableDTOCopyWith<$Res> get pageable;
  $PaginationSortDTOCopyWith<$Res> get sort;
}

/// @nodoc
class _$PaginationDTOCopyWithImpl<$Res, $Val extends PaginationDTO>
    implements $PaginationDTOCopyWith<$Res> {
  _$PaginationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageable = null,
    Object? totalPages = null,
    Object? totalElements = null,
    Object? last = null,
    Object? size = null,
    Object? number = null,
    Object? sort = null,
    Object? numberOfElements = null,
    Object? first = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as PageableDTO,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as PaginationSortDTO,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageableDTOCopyWith<$Res> get pageable {
    return $PageableDTOCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
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
abstract class _$$PaginationDTOImplCopyWith<$Res>
    implements $PaginationDTOCopyWith<$Res> {
  factory _$$PaginationDTOImplCopyWith(
          _$PaginationDTOImpl value, $Res Function(_$PaginationDTOImpl) then) =
      __$$PaginationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageableDTO pageable,
      int totalPages,
      int totalElements,
      bool last,
      int size,
      int number,
      PaginationSortDTO sort,
      int numberOfElements,
      bool first,
      bool empty});

  @override
  $PageableDTOCopyWith<$Res> get pageable;
  @override
  $PaginationSortDTOCopyWith<$Res> get sort;
}

/// @nodoc
class __$$PaginationDTOImplCopyWithImpl<$Res>
    extends _$PaginationDTOCopyWithImpl<$Res, _$PaginationDTOImpl>
    implements _$$PaginationDTOImplCopyWith<$Res> {
  __$$PaginationDTOImplCopyWithImpl(
      _$PaginationDTOImpl _value, $Res Function(_$PaginationDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageable = null,
    Object? totalPages = null,
    Object? totalElements = null,
    Object? last = null,
    Object? size = null,
    Object? number = null,
    Object? sort = null,
    Object? numberOfElements = null,
    Object? first = null,
    Object? empty = null,
  }) {
    return _then(_$PaginationDTOImpl(
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as PageableDTO,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as PaginationSortDTO,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationDTOImpl implements _PaginationDTO {
  _$PaginationDTOImpl(
      {required this.pageable,
      required this.totalPages,
      required this.totalElements,
      required this.last,
      required this.size,
      required this.number,
      required this.sort,
      required this.numberOfElements,
      required this.first,
      required this.empty});

  factory _$PaginationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationDTOImplFromJson(json);

  @override
  final PageableDTO pageable;
  @override
  final int totalPages;
  @override
  final int totalElements;
  @override
  final bool last;
  @override
  final int size;
  @override
  final int number;
  @override
  final PaginationSortDTO sort;
  @override
  final int numberOfElements;
  @override
  final bool first;
  @override
  final bool empty;

  @override
  String toString() {
    return 'PaginationDTO(pageable: $pageable, totalPages: $totalPages, totalElements: $totalElements, last: $last, size: $size, number: $number, sort: $sort, numberOfElements: $numberOfElements, first: $first, empty: $empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDTOImpl &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageable, totalPages,
      totalElements, last, size, number, sort, numberOfElements, first, empty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDTOImplCopyWith<_$PaginationDTOImpl> get copyWith =>
      __$$PaginationDTOImplCopyWithImpl<_$PaginationDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationDTOImplToJson(
      this,
    );
  }
}

abstract class _PaginationDTO implements PaginationDTO {
  factory _PaginationDTO(
      {required final PageableDTO pageable,
      required final int totalPages,
      required final int totalElements,
      required final bool last,
      required final int size,
      required final int number,
      required final PaginationSortDTO sort,
      required final int numberOfElements,
      required final bool first,
      required final bool empty}) = _$PaginationDTOImpl;

  factory _PaginationDTO.fromJson(Map<String, dynamic> json) =
      _$PaginationDTOImpl.fromJson;

  @override
  PageableDTO get pageable;
  @override
  int get totalPages;
  @override
  int get totalElements;
  @override
  bool get last;
  @override
  int get size;
  @override
  int get number;
  @override
  PaginationSortDTO get sort;
  @override
  int get numberOfElements;
  @override
  bool get first;
  @override
  bool get empty;
  @override
  @JsonKey(ignore: true)
  _$$PaginationDTOImplCopyWith<_$PaginationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
