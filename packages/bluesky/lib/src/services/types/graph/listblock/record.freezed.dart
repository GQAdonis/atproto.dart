// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListblockRecord _$ListblockRecordFromJson(Map<String, dynamic> json) {
  return _ListblockRecord.fromJson(json);
}

/// @nodoc
mixin _$ListblockRecord {
  /// Reference (AT-URI) to the mod list record.
  @AtUriConverter()
  AtUri get subject => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListblockRecordCopyWith<ListblockRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListblockRecordCopyWith<$Res> {
  factory $ListblockRecordCopyWith(
          ListblockRecord value, $Res Function(ListblockRecord) then) =
      _$ListblockRecordCopyWithImpl<$Res, ListblockRecord>;
  @useResult
  $Res call({@AtUriConverter() AtUri subject, DateTime createdAt});
}

/// @nodoc
class _$ListblockRecordCopyWithImpl<$Res, $Val extends ListblockRecord>
    implements $ListblockRecordCopyWith<$Res> {
  _$ListblockRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as AtUri,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListblockRecordImplCopyWith<$Res>
    implements $ListblockRecordCopyWith<$Res> {
  factory _$$ListblockRecordImplCopyWith(_$ListblockRecordImpl value,
          $Res Function(_$ListblockRecordImpl) then) =
      __$$ListblockRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@AtUriConverter() AtUri subject, DateTime createdAt});
}

/// @nodoc
class __$$ListblockRecordImplCopyWithImpl<$Res>
    extends _$ListblockRecordCopyWithImpl<$Res, _$ListblockRecordImpl>
    implements _$$ListblockRecordImplCopyWith<$Res> {
  __$$ListblockRecordImplCopyWithImpl(
      _$ListblockRecordImpl _value, $Res Function(_$ListblockRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? createdAt = null,
  }) {
    return _then(_$ListblockRecordImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as AtUri,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ListblockRecordImpl implements _ListblockRecord {
  const _$ListblockRecordImpl(
      {@AtUriConverter() required this.subject, required this.createdAt});

  factory _$ListblockRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListblockRecordImplFromJson(json);

  /// Reference (AT-URI) to the mod list record.
  @override
  @AtUriConverter()
  final AtUri subject;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ListblockRecord(subject: $subject, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListblockRecordImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListblockRecordImplCopyWith<_$ListblockRecordImpl> get copyWith =>
      __$$ListblockRecordImplCopyWithImpl<_$ListblockRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListblockRecordImplToJson(
      this,
    );
  }
}

abstract class _ListblockRecord implements ListblockRecord {
  const factory _ListblockRecord(
      {@AtUriConverter() required final AtUri subject,
      required final DateTime createdAt}) = _$ListblockRecordImpl;

  factory _ListblockRecord.fromJson(Map<String, dynamic> json) =
      _$ListblockRecordImpl.fromJson;

  @override

  /// Reference (AT-URI) to the mod list record.
  @AtUriConverter()
  AtUri get subject;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ListblockRecordImplCopyWith<_$ListblockRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
