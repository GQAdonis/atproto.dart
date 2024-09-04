// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commit_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommitMeta _$CommitMetaFromJson(Map<String, dynamic> json) {
  return _CommitMeta.fromJson(json);
}

/// @nodoc
mixin _$CommitMeta {
  /// The unique namespace for this lex object.
  ///
  /// `com.atproto.repo.defs#commitMeta`
  @JsonKey(name: r'$type')
  String get $type => throw _privateConstructorUsedError;
  String get cid => throw _privateConstructorUsedError;
  String get rev => throw _privateConstructorUsedError;

  /// Contains unknown objects not defined in Lexicon.
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitMetaCopyWith<CommitMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitMetaCopyWith<$Res> {
  factory $CommitMetaCopyWith(
          CommitMeta value, $Res Function(CommitMeta) then) =
      _$CommitMetaCopyWithImpl<$Res, CommitMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: r'$type') String $type,
      String cid,
      String rev,
      @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown});
}

/// @nodoc
class _$CommitMetaCopyWithImpl<$Res, $Val extends CommitMeta>
    implements $CommitMetaCopyWith<$Res> {
  _$CommitMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? $type = null,
    Object? cid = null,
    Object? rev = null,
    Object? $unknown = freezed,
  }) {
    return _then(_value.copyWith(
      $type: null == $type
          ? _value.$type
          : $type // ignore: cast_nullable_to_non_nullable
              as String,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
      rev: null == rev
          ? _value.rev
          : rev // ignore: cast_nullable_to_non_nullable
              as String,
      $unknown: freezed == $unknown
          ? _value.$unknown
          : $unknown // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommitMetaImplCopyWith<$Res>
    implements $CommitMetaCopyWith<$Res> {
  factory _$$CommitMetaImplCopyWith(
          _$CommitMetaImpl value, $Res Function(_$CommitMetaImpl) then) =
      __$$CommitMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: r'$type') String $type,
      String cid,
      String rev,
      @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown});
}

/// @nodoc
class __$$CommitMetaImplCopyWithImpl<$Res>
    extends _$CommitMetaCopyWithImpl<$Res, _$CommitMetaImpl>
    implements _$$CommitMetaImplCopyWith<$Res> {
  __$$CommitMetaImplCopyWithImpl(
      _$CommitMetaImpl _value, $Res Function(_$CommitMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? $type = null,
    Object? cid = null,
    Object? rev = null,
    Object? $unknown = freezed,
  }) {
    return _then(_$CommitMetaImpl(
      $type: null == $type
          ? _value.$type
          : $type // ignore: cast_nullable_to_non_nullable
              as String,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
      rev: null == rev
          ? _value.rev
          : rev // ignore: cast_nullable_to_non_nullable
              as String,
      $unknown: freezed == $unknown
          ? _value._$unknown
          : $unknown // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$CommitMetaImpl implements _CommitMeta {
  const _$CommitMetaImpl(
      {@JsonKey(name: r'$type') this.$type = comAtprotoRepoDefsCommitMeta,
      required this.cid,
      required this.rev,
      @JsonKey(name: r'$unknown') final Map<String, dynamic>? $unknown})
      : _$unknown = $unknown;

  factory _$CommitMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommitMetaImplFromJson(json);

  /// The unique namespace for this lex object.
  ///
  /// `com.atproto.repo.defs#commitMeta`
  @override
  @JsonKey(name: r'$type')
  final String $type;
  @override
  final String cid;
  @override
  final String rev;

  /// Contains unknown objects not defined in Lexicon.
  final Map<String, dynamic>? _$unknown;

  /// Contains unknown objects not defined in Lexicon.
  @override
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown {
    final value = _$unknown;
    if (value == null) return null;
    if (_$unknown is EqualUnmodifiableMapView) return _$unknown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CommitMeta(\$type: ${$type}, cid: $cid, rev: $rev, \$unknown: ${$unknown})';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitMetaImpl &&
            (identical(other.$type, $type) || other.$type == $type) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.rev, rev) || other.rev == rev) &&
            const DeepCollectionEquality().equals(other._$unknown, _$unknown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, $type, cid, rev,
      const DeepCollectionEquality().hash(_$unknown));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommitMetaImplCopyWith<_$CommitMetaImpl> get copyWith =>
      __$$CommitMetaImplCopyWithImpl<_$CommitMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommitMetaImplToJson(
      this,
    );
  }
}

abstract class _CommitMeta implements CommitMeta {
  const factory _CommitMeta(
          {@JsonKey(name: r'$type') final String $type,
          required final String cid,
          required final String rev,
          @JsonKey(name: r'$unknown') final Map<String, dynamic>? $unknown}) =
      _$CommitMetaImpl;

  factory _CommitMeta.fromJson(Map<String, dynamic> json) =
      _$CommitMetaImpl.fromJson;

  @override

  /// The unique namespace for this lex object.
  ///
  /// `com.atproto.repo.defs#commitMeta`
  @JsonKey(name: r'$type')
  String get $type;
  @override
  String get cid;
  @override
  String get rev;
  @override

  /// Contains unknown objects not defined in Lexicon.
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown;
  @override
  @JsonKey(ignore: true)
  _$$CommitMetaImplCopyWith<_$CommitMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
