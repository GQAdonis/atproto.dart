// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPreferencesParams _$GetPreferencesParamsFromJson(Map<String, dynamic> json) {
  return _GetPreferencesParams.fromJson(json);
}

/// @nodoc
mixin _$GetPreferencesParams {
  /// Contains unknown objects not defined in Lexicon.
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPreferencesParamsCopyWith<GetPreferencesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPreferencesParamsCopyWith<$Res> {
  factory $GetPreferencesParamsCopyWith(GetPreferencesParams value,
          $Res Function(GetPreferencesParams) then) =
      _$GetPreferencesParamsCopyWithImpl<$Res, GetPreferencesParams>;
  @useResult
  $Res call({@JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown});
}

/// @nodoc
class _$GetPreferencesParamsCopyWithImpl<$Res,
        $Val extends GetPreferencesParams>
    implements $GetPreferencesParamsCopyWith<$Res> {
  _$GetPreferencesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? $unknown = freezed,
  }) {
    return _then(_value.copyWith(
      $unknown: freezed == $unknown
          ? _value.$unknown
          : $unknown // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPreferencesParamsImplCopyWith<$Res>
    implements $GetPreferencesParamsCopyWith<$Res> {
  factory _$$GetPreferencesParamsImplCopyWith(_$GetPreferencesParamsImpl value,
          $Res Function(_$GetPreferencesParamsImpl) then) =
      __$$GetPreferencesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown});
}

/// @nodoc
class __$$GetPreferencesParamsImplCopyWithImpl<$Res>
    extends _$GetPreferencesParamsCopyWithImpl<$Res, _$GetPreferencesParamsImpl>
    implements _$$GetPreferencesParamsImplCopyWith<$Res> {
  __$$GetPreferencesParamsImplCopyWithImpl(_$GetPreferencesParamsImpl _value,
      $Res Function(_$GetPreferencesParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? $unknown = freezed,
  }) {
    return _then(_$GetPreferencesParamsImpl(
      $unknown: freezed == $unknown
          ? _value._$unknown
          : $unknown // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$GetPreferencesParamsImpl implements _GetPreferencesParams {
  const _$GetPreferencesParamsImpl(
      {@JsonKey(name: r'$unknown') final Map<String, dynamic>? $unknown})
      : _$unknown = $unknown;

  factory _$GetPreferencesParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPreferencesParamsImplFromJson(json);

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
    return 'GetPreferencesParams(\$unknown: ${$unknown})';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPreferencesParamsImpl &&
            const DeepCollectionEquality().equals(other._$unknown, _$unknown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_$unknown));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPreferencesParamsImplCopyWith<_$GetPreferencesParamsImpl>
      get copyWith =>
          __$$GetPreferencesParamsImplCopyWithImpl<_$GetPreferencesParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPreferencesParamsImplToJson(
      this,
    );
  }
}

abstract class _GetPreferencesParams implements GetPreferencesParams {
  const factory _GetPreferencesParams(
          {@JsonKey(name: r'$unknown') final Map<String, dynamic>? $unknown}) =
      _$GetPreferencesParamsImpl;

  factory _GetPreferencesParams.fromJson(Map<String, dynamic> json) =
      _$GetPreferencesParamsImpl.fromJson;

  @override

  /// Contains unknown objects not defined in Lexicon.
  @JsonKey(name: r'$unknown')
  Map<String, dynamic>? get $unknown;
  @override
  @JsonKey(ignore: true)
  _$$GetPreferencesParamsImplCopyWith<_$GetPreferencesParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
