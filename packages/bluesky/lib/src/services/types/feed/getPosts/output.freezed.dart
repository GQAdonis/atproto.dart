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

GetPostsOutput _$GetPostsOutputFromJson(Map<String, dynamic> json) {
  return _GetPostsOutput.fromJson(json);
}

/// @nodoc
mixin _$GetPostsOutput {
  List<PostView> get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPostsOutputCopyWith<GetPostsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsOutputCopyWith<$Res> {
  factory $GetPostsOutputCopyWith(
          GetPostsOutput value, $Res Function(GetPostsOutput) then) =
      _$GetPostsOutputCopyWithImpl<$Res, GetPostsOutput>;
  @useResult
  $Res call({List<PostView> posts});
}

/// @nodoc
class _$GetPostsOutputCopyWithImpl<$Res, $Val extends GetPostsOutput>
    implements $GetPostsOutputCopyWith<$Res> {
  _$GetPostsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostView>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostsOutputImplCopyWith<$Res>
    implements $GetPostsOutputCopyWith<$Res> {
  factory _$$GetPostsOutputImplCopyWith(_$GetPostsOutputImpl value,
          $Res Function(_$GetPostsOutputImpl) then) =
      __$$GetPostsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostView> posts});
}

/// @nodoc
class __$$GetPostsOutputImplCopyWithImpl<$Res>
    extends _$GetPostsOutputCopyWithImpl<$Res, _$GetPostsOutputImpl>
    implements _$$GetPostsOutputImplCopyWith<$Res> {
  __$$GetPostsOutputImplCopyWithImpl(
      _$GetPostsOutputImpl _value, $Res Function(_$GetPostsOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$GetPostsOutputImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostView>,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$GetPostsOutputImpl implements _GetPostsOutput {
  const _$GetPostsOutputImpl({required final List<PostView> posts})
      : _posts = posts;

  factory _$GetPostsOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPostsOutputImplFromJson(json);

  final List<PostView> _posts;
  @override
  List<PostView> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'GetPostsOutput(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsOutputImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsOutputImplCopyWith<_$GetPostsOutputImpl> get copyWith =>
      __$$GetPostsOutputImplCopyWithImpl<_$GetPostsOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostsOutputImplToJson(
      this,
    );
  }
}

abstract class _GetPostsOutput implements GetPostsOutput {
  const factory _GetPostsOutput({required final List<PostView> posts}) =
      _$GetPostsOutputImpl;

  factory _GetPostsOutput.fromJson(Map<String, dynamic> json) =
      _$GetPostsOutputImpl.fromJson;

  @override
  List<PostView> get posts;
  @override
  @JsonKey(ignore: true)
  _$$GetPostsOutputImplCopyWith<_$GetPostsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
