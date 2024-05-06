// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionResponseDto _$TransactionResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _TransactionResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionResponseDto {
  int get status => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionResponseDtoCopyWith<TransactionResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionResponseDtoCopyWith<$Res> {
  factory $TransactionResponseDtoCopyWith(TransactionResponseDto value,
          $Res Function(TransactionResponseDto) then) =
      _$TransactionResponseDtoCopyWithImpl<$Res, TransactionResponseDto>;
  @useResult
  $Res call({int status, String code, String message});
}

/// @nodoc
class _$TransactionResponseDtoCopyWithImpl<$Res,
        $Val extends TransactionResponseDto>
    implements $TransactionResponseDtoCopyWith<$Res> {
  _$TransactionResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionResponseDtoImplCopyWith<$Res>
    implements $TransactionResponseDtoCopyWith<$Res> {
  factory _$$TransactionResponseDtoImplCopyWith(
          _$TransactionResponseDtoImpl value,
          $Res Function(_$TransactionResponseDtoImpl) then) =
      __$$TransactionResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String code, String message});
}

/// @nodoc
class __$$TransactionResponseDtoImplCopyWithImpl<$Res>
    extends _$TransactionResponseDtoCopyWithImpl<$Res,
        _$TransactionResponseDtoImpl>
    implements _$$TransactionResponseDtoImplCopyWith<$Res> {
  __$$TransactionResponseDtoImplCopyWithImpl(
      _$TransactionResponseDtoImpl _value,
      $Res Function(_$TransactionResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$TransactionResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionResponseDtoImpl implements _TransactionResponseDto {
  _$TransactionResponseDtoImpl(
      {required this.status, required this.code, required this.message});

  factory _$TransactionResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionResponseDtoImplFromJson(json);

  @override
  final int status;
  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'TransactionResponseDto(status: $status, code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionResponseDtoImplCopyWith<_$TransactionResponseDtoImpl>
      get copyWith => __$$TransactionResponseDtoImplCopyWithImpl<
          _$TransactionResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _TransactionResponseDto implements TransactionResponseDto {
  factory _TransactionResponseDto(
      {required final int status,
      required final String code,
      required final String message}) = _$TransactionResponseDtoImpl;

  factory _TransactionResponseDto.fromJson(Map<String, dynamic> json) =
      _$TransactionResponseDtoImpl.fromJson;

  @override
  int get status;
  @override
  String get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$TransactionResponseDtoImplCopyWith<_$TransactionResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
