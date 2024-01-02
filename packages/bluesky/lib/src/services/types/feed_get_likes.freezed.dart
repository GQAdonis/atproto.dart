// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_get_likes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedGetLikes _$FeedGetLikesFromJson(Map<String, dynamic> json) {
  return _FeedGetLikes.fromJson(json);
}

/// @nodoc
mixin _$FeedGetLikes {
  List<FeedGetLikesLike> get likes => throw _privateConstructorUsedError;
  @atUriConverter
  AtUri get uri => throw _privateConstructorUsedError;
  String? get cid => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedGetLikesCopyWith<FeedGetLikes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedGetLikesCopyWith<$Res> {
  factory $FeedGetLikesCopyWith(
          FeedGetLikes value, $Res Function(FeedGetLikes) then) =
      _$FeedGetLikesCopyWithImpl<$Res, FeedGetLikes>;
  @useResult
  $Res call(
      {List<FeedGetLikesLike> likes,
      @atUriConverter AtUri uri,
      String? cid,
      String? cursor});
}

/// @nodoc
class _$FeedGetLikesCopyWithImpl<$Res, $Val extends FeedGetLikes>
    implements $FeedGetLikesCopyWith<$Res> {
  _$FeedGetLikesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
    Object? uri = null,
    Object? cid = freezed,
    Object? cursor = freezed,
  }) {
    return _then(_value.copyWith(
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<FeedGetLikesLike>,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as AtUri,
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedGetLikesImplCopyWith<$Res>
    implements $FeedGetLikesCopyWith<$Res> {
  factory _$$FeedGetLikesImplCopyWith(
          _$FeedGetLikesImpl value, $Res Function(_$FeedGetLikesImpl) then) =
      __$$FeedGetLikesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FeedGetLikesLike> likes,
      @atUriConverter AtUri uri,
      String? cid,
      String? cursor});
}

/// @nodoc
class __$$FeedGetLikesImplCopyWithImpl<$Res>
    extends _$FeedGetLikesCopyWithImpl<$Res, _$FeedGetLikesImpl>
    implements _$$FeedGetLikesImplCopyWith<$Res> {
  __$$FeedGetLikesImplCopyWithImpl(
      _$FeedGetLikesImpl _value, $Res Function(_$FeedGetLikesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
    Object? uri = null,
    Object? cid = freezed,
    Object? cursor = freezed,
  }) {
    return _then(_$FeedGetLikesImpl(
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<FeedGetLikesLike>,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as AtUri,
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedGetLikesImpl implements _FeedGetLikes {
  const _$FeedGetLikesImpl(
      {required final List<FeedGetLikesLike> likes,
      @atUriConverter required this.uri,
      this.cid,
      this.cursor})
      : _likes = likes;

  factory _$FeedGetLikesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedGetLikesImplFromJson(json);

  final List<FeedGetLikesLike> _likes;
  @override
  List<FeedGetLikesLike> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  @atUriConverter
  final AtUri uri;
  @override
  final String? cid;
  @override
  final String? cursor;

  @override
  String toString() {
    return 'FeedGetLikes(likes: $likes, uri: $uri, cid: $cid, cursor: $cursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedGetLikesImpl &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_likes), uri, cid, cursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedGetLikesImplCopyWith<_$FeedGetLikesImpl> get copyWith =>
      __$$FeedGetLikesImplCopyWithImpl<_$FeedGetLikesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedGetLikesImplToJson(
      this,
    );
  }
}

abstract class _FeedGetLikes implements FeedGetLikes {
  const factory _FeedGetLikes(
      {required final List<FeedGetLikesLike> likes,
      @atUriConverter required final AtUri uri,
      final String? cid,
      final String? cursor}) = _$FeedGetLikesImpl;

  factory _FeedGetLikes.fromJson(Map<String, dynamic> json) =
      _$FeedGetLikesImpl.fromJson;

  @override
  List<FeedGetLikesLike> get likes;
  @override
  @atUriConverter
  AtUri get uri;
  @override
  String? get cid;
  @override
  String? get cursor;
  @override
  @JsonKey(ignore: true)
  _$$FeedGetLikesImplCopyWith<_$FeedGetLikesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
