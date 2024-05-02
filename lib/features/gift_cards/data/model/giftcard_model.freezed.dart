// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giftcard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiftcardModel _$GiftcardModelFromJson(Map<String, dynamic> json) {
  return _GiftcardModel.fromJson(json);
}

/// @nodoc
mixin _$GiftcardModel {
  String? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get cvv => throw _privateConstructorUsedError;
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get theme => throw _privateConstructorUsedError;
  String? get recipient => throw _privateConstructorUsedError;
  String? get recipientName => throw _privateConstructorUsedError;
  String get recipientPhoneNumber => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String get purchaser => throw _privateConstructorUsedError;
  String get purchaserName => throw _privateConstructorUsedError;
  String? get transaction => throw _privateConstructorUsedError;
  String get issuer => throw _privateConstructorUsedError;
  GiftcardState get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftcardModelCopyWith<GiftcardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftcardModelCopyWith<$Res> {
  factory $GiftcardModelCopyWith(
          GiftcardModel value, $Res Function(GiftcardModel) then) =
      _$GiftcardModelCopyWithImpl<$Res, GiftcardModel>;
  @useResult
  $Res call(
      {String? id,
      String? code,
      int? cvv,
      DateTime? dateCreated,
      DateTime expirationDate,
      DateTime? lastUpdated,
      String title,
      String message,
      int theme,
      String? recipient,
      String? recipientName,
      String recipientPhoneNumber,
      int value,
      String purchaser,
      String purchaserName,
      String? transaction,
      String issuer,
      GiftcardState status});
}

/// @nodoc
class _$GiftcardModelCopyWithImpl<$Res, $Val extends GiftcardModel>
    implements $GiftcardModelCopyWith<$Res> {
  _$GiftcardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? cvv = freezed,
    Object? dateCreated = freezed,
    Object? expirationDate = null,
    Object? lastUpdated = freezed,
    Object? title = null,
    Object? message = null,
    Object? theme = null,
    Object? recipient = freezed,
    Object? recipientName = freezed,
    Object? recipientPhoneNumber = null,
    Object? value = null,
    Object? purchaser = null,
    Object? purchaserName = null,
    Object? transaction = freezed,
    Object? issuer = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$GiftcardModelImplCopyWith<$Res>
    implements $GiftcardModelCopyWith<$Res> {
  factory _$$GiftcardModelImplCopyWith(
          _$GiftcardModelImpl value, $Res Function(_$GiftcardModelImpl) then) =
      __$$GiftcardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? code,
      int? cvv,
      DateTime? dateCreated,
      DateTime expirationDate,
      DateTime? lastUpdated,
      String title,
      String message,
      int theme,
      String? recipient,
      String? recipientName,
      String recipientPhoneNumber,
      int value,
      String purchaser,
      String purchaserName,
      String? transaction,
      String issuer,
      GiftcardState status});
}

/// @nodoc
class __$$GiftcardModelImplCopyWithImpl<$Res>
    extends _$GiftcardModelCopyWithImpl<$Res, _$GiftcardModelImpl>
    implements _$$GiftcardModelImplCopyWith<$Res> {
  __$$GiftcardModelImplCopyWithImpl(
      _$GiftcardModelImpl _value, $Res Function(_$GiftcardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? cvv = freezed,
    Object? dateCreated = freezed,
    Object? expirationDate = null,
    Object? lastUpdated = freezed,
    Object? title = null,
    Object? message = null,
    Object? theme = null,
    Object? recipient = freezed,
    Object? recipientName = freezed,
    Object? recipientPhoneNumber = null,
    Object? value = null,
    Object? purchaser = null,
    Object? purchaserName = null,
    Object? transaction = freezed,
    Object? issuer = null,
    Object? status = null,
  }) {
    return _then(_$GiftcardModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$GiftcardModelImpl extends _GiftcardModel with DiagnosticableTreeMixin {
  _$GiftcardModelImpl(
      {this.id,
      this.code,
      this.cvv,
      this.dateCreated,
      required this.expirationDate,
      this.lastUpdated,
      required this.title,
      required this.message,
      required this.theme,
      this.recipient,
      this.recipientName,
      required this.recipientPhoneNumber,
      required this.value,
      required this.purchaser,
      required this.purchaserName,
      this.transaction,
      required this.issuer,
      required this.status})
      : super._();

  factory _$GiftcardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftcardModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? code;
  @override
  final int? cvv;
  @override
  final DateTime? dateCreated;
  @override
  final DateTime expirationDate;
  @override
  final DateTime? lastUpdated;
  @override
  final String title;
  @override
  final String message;
  @override
  final int theme;
  @override
  final String? recipient;
  @override
  final String? recipientName;
  @override
  final String recipientPhoneNumber;
  @override
  final int value;
  @override
  final String purchaser;
  @override
  final String purchaserName;
  @override
  final String? transaction;
  @override
  final String issuer;
  @override
  final GiftcardState status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GiftcardModel(id: $id, code: $code, cvv: $cvv, dateCreated: $dateCreated, expirationDate: $expirationDate, lastUpdated: $lastUpdated, title: $title, message: $message, theme: $theme, recipient: $recipient, recipientName: $recipientName, recipientPhoneNumber: $recipientPhoneNumber, value: $value, purchaser: $purchaser, purchaserName: $purchaserName, transaction: $transaction, issuer: $issuer, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GiftcardModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('cvv', cvv))
      ..add(DiagnosticsProperty('dateCreated', dateCreated))
      ..add(DiagnosticsProperty('expirationDate', expirationDate))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('recipient', recipient))
      ..add(DiagnosticsProperty('recipientName', recipientName))
      ..add(DiagnosticsProperty('recipientPhoneNumber', recipientPhoneNumber))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('purchaser', purchaser))
      ..add(DiagnosticsProperty('purchaserName', purchaserName))
      ..add(DiagnosticsProperty('transaction', transaction))
      ..add(DiagnosticsProperty('issuer', issuer))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftcardModelImpl &&
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
  _$$GiftcardModelImplCopyWith<_$GiftcardModelImpl> get copyWith =>
      __$$GiftcardModelImplCopyWithImpl<_$GiftcardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftcardModelImplToJson(
      this,
    );
  }
}

abstract class _GiftcardModel extends GiftcardModel {
  factory _GiftcardModel(
      {final String? id,
      final String? code,
      final int? cvv,
      final DateTime? dateCreated,
      required final DateTime expirationDate,
      final DateTime? lastUpdated,
      required final String title,
      required final String message,
      required final int theme,
      final String? recipient,
      final String? recipientName,
      required final String recipientPhoneNumber,
      required final int value,
      required final String purchaser,
      required final String purchaserName,
      final String? transaction,
      required final String issuer,
      required final GiftcardState status}) = _$GiftcardModelImpl;
  _GiftcardModel._() : super._();

  factory _GiftcardModel.fromJson(Map<String, dynamic> json) =
      _$GiftcardModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get code;
  @override
  int? get cvv;
  @override
  DateTime? get dateCreated;
  @override
  DateTime get expirationDate;
  @override
  DateTime? get lastUpdated;
  @override
  String get title;
  @override
  String get message;
  @override
  int get theme;
  @override
  String? get recipient;
  @override
  String? get recipientName;
  @override
  String get recipientPhoneNumber;
  @override
  int get value;
  @override
  String get purchaser;
  @override
  String get purchaserName;
  @override
  String? get transaction;
  @override
  String get issuer;
  @override
  GiftcardState get status;
  @override
  @JsonKey(ignore: true)
  _$$GiftcardModelImplCopyWith<_$GiftcardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
