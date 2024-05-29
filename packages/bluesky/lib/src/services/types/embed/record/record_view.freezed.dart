// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordView _$RecordViewFromJson(Map<String, dynamic> json) {
  return _RecordView.fromJson(json);
}

/// @nodoc
mixin _$RecordView {
  String get record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordViewCopyWith<RecordView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordViewCopyWith<$Res> {
  factory $RecordViewCopyWith(
          RecordView value, $Res Function(RecordView) then) =
      _$RecordViewCopyWithImpl<$Res, RecordView>;
  @useResult
  $Res call({String record});
}

/// @nodoc
class _$RecordViewCopyWithImpl<$Res, $Val extends RecordView>
    implements $RecordViewCopyWith<$Res> {
  _$RecordViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
  }) {
    return _then(_value.copyWith(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordViewImplCopyWith<$Res>
    implements $RecordViewCopyWith<$Res> {
  factory _$$RecordViewImplCopyWith(
          _$RecordViewImpl value, $Res Function(_$RecordViewImpl) then) =
      __$$RecordViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String record});
}

/// @nodoc
class __$$RecordViewImplCopyWithImpl<$Res>
    extends _$RecordViewCopyWithImpl<$Res, _$RecordViewImpl>
    implements _$$RecordViewImplCopyWith<$Res> {
  __$$RecordViewImplCopyWithImpl(
      _$RecordViewImpl _value, $Res Function(_$RecordViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
  }) {
    return _then(_$RecordViewImpl(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$RecordViewImpl implements _RecordView {
  const _$RecordViewImpl({required this.record});

  factory _$RecordViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordViewImplFromJson(json);

  @override
  final String record;

  @override
  String toString() {
    return 'RecordView(record: $record)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordViewImpl &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordViewImplCopyWith<_$RecordViewImpl> get copyWith =>
      __$$RecordViewImplCopyWithImpl<_$RecordViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordViewImplToJson(
      this,
    );
  }
}

abstract class _RecordView implements RecordView {
  const factory _RecordView({required final String record}) = _$RecordViewImpl;

  factory _RecordView.fromJson(Map<String, dynamic> json) =
      _$RecordViewImpl.fromJson;

  @override
  String get record;
  @override
  @JsonKey(ignore: true)
  _$$RecordViewImplCopyWith<_$RecordViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
