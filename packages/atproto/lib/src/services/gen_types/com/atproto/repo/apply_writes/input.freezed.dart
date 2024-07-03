// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplyWritesInput _$ApplyWritesInputFromJson(Map<String, dynamic> json) {
  return _ApplyWritesInput.fromJson(json);
}

/// @nodoc
mixin _$ApplyWritesInput {
  /// The handle or DID of the repo (aka, current account).
  String? get repo => throw _privateConstructorUsedError;

  /// Can be set to 'false' to skip Lexicon schema validation of record data, for all operations.
  bool? get validate => throw _privateConstructorUsedError;
  @UApplyWritesWriteConverter()
  List<UApplyWritesWrite> get writes => throw _privateConstructorUsedError;

  /// If provided, the entire operation will fail if the current repo commit CID does not match this value. Used to prevent conflicting repo mutations.
  String? get swapCommit => throw _privateConstructorUsedError;

  /// Contains unknown objects not defined in Lexicon.
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyWritesInputCopyWith<ApplyWritesInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyWritesInputCopyWith<$Res> {
  factory $ApplyWritesInputCopyWith(
          ApplyWritesInput value, $Res Function(ApplyWritesInput) then) =
      _$ApplyWritesInputCopyWithImpl<$Res, ApplyWritesInput>;
  @useResult
  $Res call(
      {String? repo,
      bool? validate,
      @UApplyWritesWriteConverter() List<UApplyWritesWrite> writes,
      String? swapCommit,
      @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown});
}

/// @nodoc
class _$ApplyWritesInputCopyWithImpl<$Res, $Val extends ApplyWritesInput>
    implements $ApplyWritesInputCopyWith<$Res> {
  _$ApplyWritesInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repo = freezed,
    Object? validate = freezed,
    Object? writes = null,
    Object? swapCommit = freezed,
    Object? $unknown = freezed,
  }) {
    return _then(_value.copyWith(
      repo: freezed == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String?,
      validate: freezed == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool?,
      writes: null == writes
          ? _value.writes
          : writes // ignore: cast_nullable_to_non_nullable
              as List<UApplyWritesWrite>,
      swapCommit: freezed == swapCommit
          ? _value.swapCommit
          : swapCommit // ignore: cast_nullable_to_non_nullable
              as String?,
      $unknown: freezed == $unknown
          ? _value.$unknown
          : $unknown // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyWritesInputImplCopyWith<$Res>
    implements $ApplyWritesInputCopyWith<$Res> {
  factory _$$ApplyWritesInputImplCopyWith(_$ApplyWritesInputImpl value,
          $Res Function(_$ApplyWritesInputImpl) then) =
      __$$ApplyWritesInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? repo,
      bool? validate,
      @UApplyWritesWriteConverter() List<UApplyWritesWrite> writes,
      String? swapCommit,
      @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown});
}

/// @nodoc
class __$$ApplyWritesInputImplCopyWithImpl<$Res>
    extends _$ApplyWritesInputCopyWithImpl<$Res, _$ApplyWritesInputImpl>
    implements _$$ApplyWritesInputImplCopyWith<$Res> {
  __$$ApplyWritesInputImplCopyWithImpl(_$ApplyWritesInputImpl _value,
      $Res Function(_$ApplyWritesInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repo = freezed,
    Object? validate = freezed,
    Object? writes = null,
    Object? swapCommit = freezed,
    Object? $unknown = freezed,
  }) {
    return _then(_$ApplyWritesInputImpl(
      repo: freezed == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String?,
      validate: freezed == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool?,
      writes: null == writes
          ? _value._writes
          : writes // ignore: cast_nullable_to_non_nullable
              as List<UApplyWritesWrite>,
      swapCommit: freezed == swapCommit
          ? _value.swapCommit
          : swapCommit // ignore: cast_nullable_to_non_nullable
              as String?,
      $unknown: freezed == $unknown
          ? _value._$unknown
          : $unknown // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ApplyWritesInputImpl implements _ApplyWritesInput {
  const _$ApplyWritesInputImpl(
      {this.repo,
      this.validate,
      @UApplyWritesWriteConverter()
      required final List<UApplyWritesWrite> writes,
      this.swapCommit,
      @JsonKey(name: r'$unknown') final Map<String, dynamic>? $unknown})
      : _writes = writes,
        _$unknown = $unknown;

  factory _$ApplyWritesInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyWritesInputImplFromJson(json);

  /// The handle or DID of the repo (aka, current account).
  @override
  final String? repo;

  /// Can be set to 'false' to skip Lexicon schema validation of record data, for all operations.
  @override
  final bool? validate;
  final List<UApplyWritesWrite> _writes;
  @override
  @UApplyWritesWriteConverter()
  List<UApplyWritesWrite> get writes {
    if (_writes is EqualUnmodifiableListView) return _writes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_writes);
  }

  /// If provided, the entire operation will fail if the current repo commit CID does not match this value. Used to prevent conflicting repo mutations.
  @override
  final String? swapCommit;

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
    return 'ApplyWritesInput(repo: $repo, validate: $validate, writes: $writes, swapCommit: $swapCommit, \$unknown: ${$unknown})';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyWritesInputImpl &&
            (identical(other.repo, repo) || other.repo == repo) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            const DeepCollectionEquality().equals(other._writes, _writes) &&
            (identical(other.swapCommit, swapCommit) ||
                other.swapCommit == swapCommit) &&
            const DeepCollectionEquality().equals(other._$unknown, _$unknown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      repo,
      validate,
      const DeepCollectionEquality().hash(_writes),
      swapCommit,
      const DeepCollectionEquality().hash(_$unknown));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyWritesInputImplCopyWith<_$ApplyWritesInputImpl> get copyWith =>
      __$$ApplyWritesInputImplCopyWithImpl<_$ApplyWritesInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyWritesInputImplToJson(
      this,
    );
  }
}

abstract class _ApplyWritesInput implements ApplyWritesInput {
  const factory _ApplyWritesInput(
          {final String? repo,
          final bool? validate,
          @UApplyWritesWriteConverter()
          required final List<UApplyWritesWrite> writes,
          final String? swapCommit,
          @JsonKey(name: r'$unknown') final Map<String, dynamic>? $unknown}) =
      _$ApplyWritesInputImpl;

  factory _ApplyWritesInput.fromJson(Map<String, dynamic> json) =
      _$ApplyWritesInputImpl.fromJson;

  @override

  /// The handle or DID of the repo (aka, current account).
  String? get repo;
  @override

  /// Can be set to 'false' to skip Lexicon schema validation of record data, for all operations.
  bool? get validate;
  @override
  @UApplyWritesWriteConverter()
  List<UApplyWritesWrite> get writes;
  @override

  /// If provided, the entire operation will fail if the current repo commit CID does not match this value. Used to prevent conflicting repo mutations.
  String? get swapCommit;
  @override

  /// Contains unknown objects not defined in Lexicon.
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown;
  @override
  @JsonKey(ignore: true)
  _$$ApplyWritesInputImplCopyWith<_$ApplyWritesInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
