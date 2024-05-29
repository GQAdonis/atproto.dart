// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetListMutesOutput _$GetListMutesOutputFromJson(Map<String, dynamic> json) {
  return _GetListMutesOutput.fromJson(json);
}

/// @nodoc
mixin _$GetListMutesOutput {
  String? get cursor => throw _privateConstructorUsedError;
  List<ListView> get lists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetListMutesOutputCopyWith<GetListMutesOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListMutesOutputCopyWith<$Res> {
  factory $GetListMutesOutputCopyWith(
          GetListMutesOutput value, $Res Function(GetListMutesOutput) then) =
      _$GetListMutesOutputCopyWithImpl<$Res, GetListMutesOutput>;
  @useResult
  $Res call({String? cursor, List<ListView> lists});
}

/// @nodoc
class _$GetListMutesOutputCopyWithImpl<$Res, $Val extends GetListMutesOutput>
    implements $GetListMutesOutputCopyWith<$Res> {
  _$GetListMutesOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
    Object? lists = null,
  }) {
    return _then(_value.copyWith(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      lists: null == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<ListView>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetListMutesOutputImplCopyWith<$Res>
    implements $GetListMutesOutputCopyWith<$Res> {
  factory _$$GetListMutesOutputImplCopyWith(_$GetListMutesOutputImpl value,
          $Res Function(_$GetListMutesOutputImpl) then) =
      __$$GetListMutesOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cursor, List<ListView> lists});
}

/// @nodoc
class __$$GetListMutesOutputImplCopyWithImpl<$Res>
    extends _$GetListMutesOutputCopyWithImpl<$Res, _$GetListMutesOutputImpl>
    implements _$$GetListMutesOutputImplCopyWith<$Res> {
  __$$GetListMutesOutputImplCopyWithImpl(_$GetListMutesOutputImpl _value,
      $Res Function(_$GetListMutesOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
    Object? lists = null,
  }) {
    return _then(_$GetListMutesOutputImpl(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      lists: null == lists
          ? _value._lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<ListView>,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$GetListMutesOutputImpl implements _GetListMutesOutput {
  const _$GetListMutesOutputImpl(
      {this.cursor, required final List<ListView> lists})
      : _lists = lists;

  factory _$GetListMutesOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetListMutesOutputImplFromJson(json);

  @override
  final String? cursor;
  final List<ListView> _lists;
  @override
  List<ListView> get lists {
    if (_lists is EqualUnmodifiableListView) return _lists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lists);
  }

  @override
  String toString() {
    return 'GetListMutesOutput(cursor: $cursor, lists: $lists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListMutesOutputImpl &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            const DeepCollectionEquality().equals(other._lists, _lists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cursor, const DeepCollectionEquality().hash(_lists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListMutesOutputImplCopyWith<_$GetListMutesOutputImpl> get copyWith =>
      __$$GetListMutesOutputImplCopyWithImpl<_$GetListMutesOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetListMutesOutputImplToJson(
      this,
    );
  }
}

abstract class _GetListMutesOutput implements GetListMutesOutput {
  const factory _GetListMutesOutput(
      {final String? cursor,
      required final List<ListView> lists}) = _$GetListMutesOutputImpl;

  factory _GetListMutesOutput.fromJson(Map<String, dynamic> json) =
      _$GetListMutesOutputImpl.fromJson;

  @override
  String? get cursor;
  @override
  List<ListView> get lists;
  @override
  @JsonKey(ignore: true)
  _$$GetListMutesOutputImplCopyWith<_$GetListMutesOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
