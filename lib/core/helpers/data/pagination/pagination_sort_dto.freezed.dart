// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_sort_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationSortDTO _$PaginationSortDTOFromJson(Map<String, dynamic> json) {
  return _PaginationSortDTO.fromJson(json);
}

/// @nodoc
mixin _$PaginationSortDTO {
  bool get sorted => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;
  bool get unsorted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationSortDTOCopyWith<PaginationSortDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationSortDTOCopyWith<$Res> {
  factory $PaginationSortDTOCopyWith(
          PaginationSortDTO value, $Res Function(PaginationSortDTO) then) =
      _$PaginationSortDTOCopyWithImpl<$Res, PaginationSortDTO>;
  @useResult
  $Res call({bool sorted, bool empty, bool unsorted});
}

/// @nodoc
class _$PaginationSortDTOCopyWithImpl<$Res, $Val extends PaginationSortDTO>
    implements $PaginationSortDTOCopyWith<$Res> {
  _$PaginationSortDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = null,
    Object? empty = null,
    Object? unsorted = null,
  }) {
    return _then(_value.copyWith(
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationSortDTOImplCopyWith<$Res>
    implements $PaginationSortDTOCopyWith<$Res> {
  factory _$$PaginationSortDTOImplCopyWith(_$PaginationSortDTOImpl value,
          $Res Function(_$PaginationSortDTOImpl) then) =
      __$$PaginationSortDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool sorted, bool empty, bool unsorted});
}

/// @nodoc
class __$$PaginationSortDTOImplCopyWithImpl<$Res>
    extends _$PaginationSortDTOCopyWithImpl<$Res, _$PaginationSortDTOImpl>
    implements _$$PaginationSortDTOImplCopyWith<$Res> {
  __$$PaginationSortDTOImplCopyWithImpl(_$PaginationSortDTOImpl _value,
      $Res Function(_$PaginationSortDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = null,
    Object? empty = null,
    Object? unsorted = null,
  }) {
    return _then(_$PaginationSortDTOImpl(
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationSortDTOImpl implements _PaginationSortDTO {
  _$PaginationSortDTOImpl(
      {required this.sorted, required this.empty, required this.unsorted});

  factory _$PaginationSortDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationSortDTOImplFromJson(json);

  @override
  final bool sorted;
  @override
  final bool empty;
  @override
  final bool unsorted;

  @override
  String toString() {
    return 'PaginationSortDTO(sorted: $sorted, empty: $empty, unsorted: $unsorted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationSortDTOImpl &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sorted, empty, unsorted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationSortDTOImplCopyWith<_$PaginationSortDTOImpl> get copyWith =>
      __$$PaginationSortDTOImplCopyWithImpl<_$PaginationSortDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationSortDTOImplToJson(
      this,
    );
  }
}

abstract class _PaginationSortDTO implements PaginationSortDTO {
  factory _PaginationSortDTO(
      {required final bool sorted,
      required final bool empty,
      required final bool unsorted}) = _$PaginationSortDTOImpl;

  factory _PaginationSortDTO.fromJson(Map<String, dynamic> json) =
      _$PaginationSortDTOImpl.fromJson;

  @override
  bool get sorted;
  @override
  bool get empty;
  @override
  bool get unsorted;
  @override
  @JsonKey(ignore: true)
  _$$PaginationSortDTOImplCopyWith<_$PaginationSortDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
