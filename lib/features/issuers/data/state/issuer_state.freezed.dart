// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issuer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IssuerState {
  List<IssuerModel> get issuers => throw _privateConstructorUsedError;
  IssuerModel? get issuer => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssuerStateCopyWith<IssuerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuerStateCopyWith<$Res> {
  factory $IssuerStateCopyWith(
          IssuerState value, $Res Function(IssuerState) then) =
      _$IssuerStateCopyWithImpl<$Res, IssuerState>;
  @useResult
  $Res call(
      {List<IssuerModel> issuers,
      IssuerModel? issuer,
      bool isLoading,
      bool isError,
      String errorMessage});

  $IssuerModelCopyWith<$Res>? get issuer;
}

/// @nodoc
class _$IssuerStateCopyWithImpl<$Res, $Val extends IssuerState>
    implements $IssuerStateCopyWith<$Res> {
  _$IssuerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuers = null,
    Object? issuer = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      issuers: null == issuers
          ? _value.issuers
          : issuers // ignore: cast_nullable_to_non_nullable
              as List<IssuerModel>,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as IssuerModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IssuerModelCopyWith<$Res>? get issuer {
    if (_value.issuer == null) {
      return null;
    }

    return $IssuerModelCopyWith<$Res>(_value.issuer!, (value) {
      return _then(_value.copyWith(issuer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IssuerStateImplCopyWith<$Res>
    implements $IssuerStateCopyWith<$Res> {
  factory _$$IssuerStateImplCopyWith(
          _$IssuerStateImpl value, $Res Function(_$IssuerStateImpl) then) =
      __$$IssuerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<IssuerModel> issuers,
      IssuerModel? issuer,
      bool isLoading,
      bool isError,
      String errorMessage});

  @override
  $IssuerModelCopyWith<$Res>? get issuer;
}

/// @nodoc
class __$$IssuerStateImplCopyWithImpl<$Res>
    extends _$IssuerStateCopyWithImpl<$Res, _$IssuerStateImpl>
    implements _$$IssuerStateImplCopyWith<$Res> {
  __$$IssuerStateImplCopyWithImpl(
      _$IssuerStateImpl _value, $Res Function(_$IssuerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuers = null,
    Object? issuer = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
  }) {
    return _then(_$IssuerStateImpl(
      issuers: null == issuers
          ? _value._issuers
          : issuers // ignore: cast_nullable_to_non_nullable
              as List<IssuerModel>,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as IssuerModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IssuerStateImpl extends _IssuerState with DiagnosticableTreeMixin {
  _$IssuerStateImpl(
      {final List<IssuerModel> issuers = const [],
      this.issuer,
      this.isLoading = true,
      this.isError = false,
      this.errorMessage = ""})
      : _issuers = issuers,
        super._();

  final List<IssuerModel> _issuers;
  @override
  @JsonKey()
  List<IssuerModel> get issuers {
    if (_issuers is EqualUnmodifiableListView) return _issuers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issuers);
  }

  @override
  final IssuerModel? issuer;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IssuerState(issuers: $issuers, issuer: $issuer, isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IssuerState'))
      ..add(DiagnosticsProperty('issuers', issuers))
      ..add(DiagnosticsProperty('issuer', issuer))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuerStateImpl &&
            const DeepCollectionEquality().equals(other._issuers, _issuers) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_issuers),
      issuer,
      isLoading,
      isError,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuerStateImplCopyWith<_$IssuerStateImpl> get copyWith =>
      __$$IssuerStateImplCopyWithImpl<_$IssuerStateImpl>(this, _$identity);
}

abstract class _IssuerState extends IssuerState {
  factory _IssuerState(
      {final List<IssuerModel> issuers,
      final IssuerModel? issuer,
      final bool isLoading,
      final bool isError,
      final String errorMessage}) = _$IssuerStateImpl;
  _IssuerState._() : super._();

  @override
  List<IssuerModel> get issuers;
  @override
  IssuerModel? get issuer;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$IssuerStateImplCopyWith<_$IssuerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
