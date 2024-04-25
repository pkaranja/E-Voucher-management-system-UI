// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorResponseDTO _$ErrorResponseDTOFromJson(Map<String, dynamic> json) {
  return _ErrorResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponseDTO {
  dynamic get data => throw _privateConstructorUsedError;
  ErrorDTO get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseDTOCopyWith<ErrorResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseDTOCopyWith<$Res> {
  factory $ErrorResponseDTOCopyWith(
          ErrorResponseDTO value, $Res Function(ErrorResponseDTO) then) =
      _$ErrorResponseDTOCopyWithImpl<$Res, ErrorResponseDTO>;
  @useResult
  $Res call({dynamic data, ErrorDTO error});

  $ErrorDTOCopyWith<$Res> get error;
}

/// @nodoc
class _$ErrorResponseDTOCopyWithImpl<$Res, $Val extends ErrorResponseDTO>
    implements $ErrorResponseDTOCopyWith<$Res> {
  _$ErrorResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorDTOCopyWith<$Res> get error {
    return $ErrorDTOCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorResponseDTOImplCopyWith<$Res>
    implements $ErrorResponseDTOCopyWith<$Res> {
  factory _$$ErrorResponseDTOImplCopyWith(_$ErrorResponseDTOImpl value,
          $Res Function(_$ErrorResponseDTOImpl) then) =
      __$$ErrorResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic data, ErrorDTO error});

  @override
  $ErrorDTOCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorResponseDTOImplCopyWithImpl<$Res>
    extends _$ErrorResponseDTOCopyWithImpl<$Res, _$ErrorResponseDTOImpl>
    implements _$$ErrorResponseDTOImplCopyWith<$Res> {
  __$$ErrorResponseDTOImplCopyWithImpl(_$ErrorResponseDTOImpl _value,
      $Res Function(_$ErrorResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_$ErrorResponseDTOImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponseDTOImpl implements _ErrorResponseDTO {
  _$ErrorResponseDTOImpl({required this.data, required this.error});

  factory _$ErrorResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseDTOImplFromJson(json);

  @override
  final dynamic data;
  @override
  final ErrorDTO error;

  @override
  String toString() {
    return 'ErrorResponseDTO(data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseDTOImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseDTOImplCopyWith<_$ErrorResponseDTOImpl> get copyWith =>
      __$$ErrorResponseDTOImplCopyWithImpl<_$ErrorResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponseDTO implements ErrorResponseDTO {
  factory _ErrorResponseDTO(
      {required final dynamic data,
      required final ErrorDTO error}) = _$ErrorResponseDTOImpl;

  factory _ErrorResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseDTOImpl.fromJson;

  @override
  dynamic get data;
  @override
  ErrorDTO get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorResponseDTOImplCopyWith<_$ErrorResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDTO _$ErrorDTOFromJson(Map<String, dynamic> json) {
  return _ErrorDTO.fromJson(json);
}

/// @nodoc
mixin _$ErrorDTO {
  int get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ErrorDetailDTO get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDTOCopyWith<ErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDTOCopyWith<$Res> {
  factory $ErrorDTOCopyWith(ErrorDTO value, $Res Function(ErrorDTO) then) =
      _$ErrorDTOCopyWithImpl<$Res, ErrorDTO>;
  @useResult
  $Res call({int status, String name, String message, ErrorDetailDTO details});

  $ErrorDetailDTOCopyWith<$Res> get details;
}

/// @nodoc
class _$ErrorDTOCopyWithImpl<$Res, $Val extends ErrorDTO>
    implements $ErrorDTOCopyWith<$Res> {
  _$ErrorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? message = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ErrorDetailDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorDetailDTOCopyWith<$Res> get details {
    return $ErrorDetailDTOCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorDTOImplCopyWith<$Res>
    implements $ErrorDTOCopyWith<$Res> {
  factory _$$ErrorDTOImplCopyWith(
          _$ErrorDTOImpl value, $Res Function(_$ErrorDTOImpl) then) =
      __$$ErrorDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String name, String message, ErrorDetailDTO details});

  @override
  $ErrorDetailDTOCopyWith<$Res> get details;
}

/// @nodoc
class __$$ErrorDTOImplCopyWithImpl<$Res>
    extends _$ErrorDTOCopyWithImpl<$Res, _$ErrorDTOImpl>
    implements _$$ErrorDTOImplCopyWith<$Res> {
  __$$ErrorDTOImplCopyWithImpl(
      _$ErrorDTOImpl _value, $Res Function(_$ErrorDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? message = null,
    Object? details = null,
  }) {
    return _then(_$ErrorDTOImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ErrorDetailDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDTOImpl implements _ErrorDTO {
  _$ErrorDTOImpl(
      {required this.status,
      required this.name,
      required this.message,
      required this.details});

  factory _$ErrorDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDTOImplFromJson(json);

  @override
  final int status;
  @override
  final String name;
  @override
  final String message;
  @override
  final ErrorDetailDTO details;

  @override
  String toString() {
    return 'ErrorDTO(status: $status, name: $name, message: $message, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDTOImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, name, message, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDTOImplCopyWith<_$ErrorDTOImpl> get copyWith =>
      __$$ErrorDTOImplCopyWithImpl<_$ErrorDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDTOImplToJson(
      this,
    );
  }
}

abstract class _ErrorDTO implements ErrorDTO {
  factory _ErrorDTO(
      {required final int status,
      required final String name,
      required final String message,
      required final ErrorDetailDTO details}) = _$ErrorDTOImpl;

  factory _ErrorDTO.fromJson(Map<String, dynamic> json) =
      _$ErrorDTOImpl.fromJson;

  @override
  int get status;
  @override
  String get name;
  @override
  String get message;
  @override
  ErrorDetailDTO get details;
  @override
  @JsonKey(ignore: true)
  _$$ErrorDTOImplCopyWith<_$ErrorDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDetailDTO _$ErrorDetailDTOFromJson(Map<String, dynamic> json) {
  return _ErrorDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$ErrorDetailDTO {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDetailDTOCopyWith<$Res> {
  factory $ErrorDetailDTOCopyWith(
          ErrorDetailDTO value, $Res Function(ErrorDetailDTO) then) =
      _$ErrorDetailDTOCopyWithImpl<$Res, ErrorDetailDTO>;
}

/// @nodoc
class _$ErrorDetailDTOCopyWithImpl<$Res, $Val extends ErrorDetailDTO>
    implements $ErrorDetailDTOCopyWith<$Res> {
  _$ErrorDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorDetailDTOImplCopyWith<$Res> {
  factory _$$ErrorDetailDTOImplCopyWith(_$ErrorDetailDTOImpl value,
          $Res Function(_$ErrorDetailDTOImpl) then) =
      __$$ErrorDetailDTOImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorDetailDTOImplCopyWithImpl<$Res>
    extends _$ErrorDetailDTOCopyWithImpl<$Res, _$ErrorDetailDTOImpl>
    implements _$$ErrorDetailDTOImplCopyWith<$Res> {
  __$$ErrorDetailDTOImplCopyWithImpl(
      _$ErrorDetailDTOImpl _value, $Res Function(_$ErrorDetailDTOImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ErrorDetailDTOImpl implements _ErrorDetailDTO {
  _$ErrorDetailDTOImpl();

  factory _$ErrorDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDetailDTOImplFromJson(json);

  @override
  String toString() {
    return 'ErrorDetailDTO()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorDetailDTOImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _ErrorDetailDTO implements ErrorDetailDTO {
  factory _ErrorDetailDTO() = _$ErrorDetailDTOImpl;

  factory _ErrorDetailDTO.fromJson(Map<String, dynamic> json) =
      _$ErrorDetailDTOImpl.fromJson;
}
