// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giftcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GiftcardState {
  List<GiftcardModel> get giftcards => throw _privateConstructorUsedError;
  GiftcardModel? get giftcard => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GiftcardStateCopyWith<GiftcardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftcardStateCopyWith<$Res> {
  factory $GiftcardStateCopyWith(
          GiftcardState value, $Res Function(GiftcardState) then) =
      _$GiftcardStateCopyWithImpl<$Res, GiftcardState>;
  @useResult
  $Res call(
      {List<GiftcardModel> giftcards,
      GiftcardModel? giftcard,
      bool isLoading,
      bool isError,
      String errorMessage});

  $GiftcardModelCopyWith<$Res>? get giftcard;
}

/// @nodoc
class _$GiftcardStateCopyWithImpl<$Res, $Val extends GiftcardState>
    implements $GiftcardStateCopyWith<$Res> {
  _$GiftcardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftcards = null,
    Object? giftcard = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      giftcards: null == giftcards
          ? _value.giftcards
          : giftcards // ignore: cast_nullable_to_non_nullable
              as List<GiftcardModel>,
      giftcard: freezed == giftcard
          ? _value.giftcard
          : giftcard // ignore: cast_nullable_to_non_nullable
              as GiftcardModel?,
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
  $GiftcardModelCopyWith<$Res>? get giftcard {
    if (_value.giftcard == null) {
      return null;
    }

    return $GiftcardModelCopyWith<$Res>(_value.giftcard!, (value) {
      return _then(_value.copyWith(giftcard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GiftcardStateImplCopyWith<$Res>
    implements $GiftcardStateCopyWith<$Res> {
  factory _$$GiftcardStateImplCopyWith(
          _$GiftcardStateImpl value, $Res Function(_$GiftcardStateImpl) then) =
      __$$GiftcardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GiftcardModel> giftcards,
      GiftcardModel? giftcard,
      bool isLoading,
      bool isError,
      String errorMessage});

  @override
  $GiftcardModelCopyWith<$Res>? get giftcard;
}

/// @nodoc
class __$$GiftcardStateImplCopyWithImpl<$Res>
    extends _$GiftcardStateCopyWithImpl<$Res, _$GiftcardStateImpl>
    implements _$$GiftcardStateImplCopyWith<$Res> {
  __$$GiftcardStateImplCopyWithImpl(
      _$GiftcardStateImpl _value, $Res Function(_$GiftcardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftcards = null,
    Object? giftcard = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
  }) {
    return _then(_$GiftcardStateImpl(
      giftcards: null == giftcards
          ? _value._giftcards
          : giftcards // ignore: cast_nullable_to_non_nullable
              as List<GiftcardModel>,
      giftcard: freezed == giftcard
          ? _value.giftcard
          : giftcard // ignore: cast_nullable_to_non_nullable
              as GiftcardModel?,
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

class _$GiftcardStateImpl extends _GiftcardState with DiagnosticableTreeMixin {
  _$GiftcardStateImpl(
      {final List<GiftcardModel> giftcards = const [],
      this.giftcard,
      this.isLoading = true,
      this.isError = false,
      this.errorMessage = ""})
      : _giftcards = giftcards,
        super._();

  final List<GiftcardModel> _giftcards;
  @override
  @JsonKey()
  List<GiftcardModel> get giftcards {
    if (_giftcards is EqualUnmodifiableListView) return _giftcards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_giftcards);
  }

  @override
  final GiftcardModel? giftcard;
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
    return 'GiftcardState(giftcards: $giftcards, giftcard: $giftcard, isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GiftcardState'))
      ..add(DiagnosticsProperty('giftcards', giftcards))
      ..add(DiagnosticsProperty('giftcard', giftcard))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftcardStateImpl &&
            const DeepCollectionEquality()
                .equals(other._giftcards, _giftcards) &&
            (identical(other.giftcard, giftcard) ||
                other.giftcard == giftcard) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_giftcards),
      giftcard,
      isLoading,
      isError,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftcardStateImplCopyWith<_$GiftcardStateImpl> get copyWith =>
      __$$GiftcardStateImplCopyWithImpl<_$GiftcardStateImpl>(this, _$identity);
}

abstract class _GiftcardState extends GiftcardState {
  factory _GiftcardState(
      {final List<GiftcardModel> giftcards,
      final GiftcardModel? giftcard,
      final bool isLoading,
      final bool isError,
      final String errorMessage}) = _$GiftcardStateImpl;
  _GiftcardState._() : super._();

  @override
  List<GiftcardModel> get giftcards;
  @override
  GiftcardModel? get giftcard;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$GiftcardStateImplCopyWith<_$GiftcardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
