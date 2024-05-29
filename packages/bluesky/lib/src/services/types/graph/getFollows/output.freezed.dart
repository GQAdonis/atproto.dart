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

GetFollowsOutput _$GetFollowsOutputFromJson(Map<String, dynamic> json) {
  return _GetFollowsOutput.fromJson(json);
}

/// @nodoc
mixin _$GetFollowsOutput {
  ProfileView get subject => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  List<ProfileView> get follows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFollowsOutputCopyWith<GetFollowsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFollowsOutputCopyWith<$Res> {
  factory $GetFollowsOutputCopyWith(
          GetFollowsOutput value, $Res Function(GetFollowsOutput) then) =
      _$GetFollowsOutputCopyWithImpl<$Res, GetFollowsOutput>;
  @useResult
  $Res call({ProfileView subject, String? cursor, List<ProfileView> follows});

  $ProfileViewCopyWith<$Res> get subject;
}

/// @nodoc
class _$GetFollowsOutputCopyWithImpl<$Res, $Val extends GetFollowsOutput>
    implements $GetFollowsOutputCopyWith<$Res> {
  _$GetFollowsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? cursor = freezed,
    Object? follows = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as ProfileView,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      follows: null == follows
          ? _value.follows
          : follows // ignore: cast_nullable_to_non_nullable
              as List<ProfileView>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileViewCopyWith<$Res> get subject {
    return $ProfileViewCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFollowsOutputImplCopyWith<$Res>
    implements $GetFollowsOutputCopyWith<$Res> {
  factory _$$GetFollowsOutputImplCopyWith(_$GetFollowsOutputImpl value,
          $Res Function(_$GetFollowsOutputImpl) then) =
      __$$GetFollowsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileView subject, String? cursor, List<ProfileView> follows});

  @override
  $ProfileViewCopyWith<$Res> get subject;
}

/// @nodoc
class __$$GetFollowsOutputImplCopyWithImpl<$Res>
    extends _$GetFollowsOutputCopyWithImpl<$Res, _$GetFollowsOutputImpl>
    implements _$$GetFollowsOutputImplCopyWith<$Res> {
  __$$GetFollowsOutputImplCopyWithImpl(_$GetFollowsOutputImpl _value,
      $Res Function(_$GetFollowsOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? cursor = freezed,
    Object? follows = null,
  }) {
    return _then(_$GetFollowsOutputImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as ProfileView,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      follows: null == follows
          ? _value._follows
          : follows // ignore: cast_nullable_to_non_nullable
              as List<ProfileView>,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$GetFollowsOutputImpl implements _GetFollowsOutput {
  const _$GetFollowsOutputImpl(
      {required this.subject,
      this.cursor,
      required final List<ProfileView> follows})
      : _follows = follows;

  factory _$GetFollowsOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFollowsOutputImplFromJson(json);

  @override
  final ProfileView subject;
  @override
  final String? cursor;
  final List<ProfileView> _follows;
  @override
  List<ProfileView> get follows {
    if (_follows is EqualUnmodifiableListView) return _follows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_follows);
  }

  @override
  String toString() {
    return 'GetFollowsOutput(subject: $subject, cursor: $cursor, follows: $follows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFollowsOutputImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            const DeepCollectionEquality().equals(other._follows, _follows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, cursor,
      const DeepCollectionEquality().hash(_follows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFollowsOutputImplCopyWith<_$GetFollowsOutputImpl> get copyWith =>
      __$$GetFollowsOutputImplCopyWithImpl<_$GetFollowsOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFollowsOutputImplToJson(
      this,
    );
  }
}

abstract class _GetFollowsOutput implements GetFollowsOutput {
  const factory _GetFollowsOutput(
      {required final ProfileView subject,
      final String? cursor,
      required final List<ProfileView> follows}) = _$GetFollowsOutputImpl;

  factory _GetFollowsOutput.fromJson(Map<String, dynamic> json) =
      _$GetFollowsOutputImpl.fromJson;

  @override
  ProfileView get subject;
  @override
  String? get cursor;
  @override
  List<ProfileView> get follows;
  @override
  @JsonKey(ignore: true)
  _$$GetFollowsOutputImplCopyWith<_$GetFollowsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
