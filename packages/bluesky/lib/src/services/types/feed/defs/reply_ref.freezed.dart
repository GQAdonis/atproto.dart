// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedDefsReplyRef _$FeedDefsReplyRefFromJson(Map<String, dynamic> json) {
  return _FeedDefsReplyRef.fromJson(json);
}

/// @nodoc
mixin _$FeedDefsReplyRef {
  @unionReplyRefRoot
  UReplyRefRoot get root => throw _privateConstructorUsedError;
  @unionReplyRefParent
  UReplyRefParent get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDefsReplyRefCopyWith<FeedDefsReplyRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDefsReplyRefCopyWith<$Res> {
  factory $FeedDefsReplyRefCopyWith(
          FeedDefsReplyRef value, $Res Function(FeedDefsReplyRef) then) =
      _$FeedDefsReplyRefCopyWithImpl<$Res, FeedDefsReplyRef>;
  @useResult
  $Res call(
      {@unionReplyRefRoot UReplyRefRoot root,
      @unionReplyRefParent UReplyRefParent parent});

  $UReplyRefRootCopyWith<$Res> get root;
  $UReplyRefParentCopyWith<$Res> get parent;
}

/// @nodoc
class _$FeedDefsReplyRefCopyWithImpl<$Res, $Val extends FeedDefsReplyRef>
    implements $FeedDefsReplyRefCopyWith<$Res> {
  _$FeedDefsReplyRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? root = null,
    Object? parent = null,
  }) {
    return _then(_value.copyWith(
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as UReplyRefRoot,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as UReplyRefParent,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UReplyRefRootCopyWith<$Res> get root {
    return $UReplyRefRootCopyWith<$Res>(_value.root, (value) {
      return _then(_value.copyWith(root: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UReplyRefParentCopyWith<$Res> get parent {
    return $UReplyRefParentCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedDefsReplyRefImplCopyWith<$Res>
    implements $FeedDefsReplyRefCopyWith<$Res> {
  factory _$$FeedDefsReplyRefImplCopyWith(_$FeedDefsReplyRefImpl value,
          $Res Function(_$FeedDefsReplyRefImpl) then) =
      __$$FeedDefsReplyRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@unionReplyRefRoot UReplyRefRoot root,
      @unionReplyRefParent UReplyRefParent parent});

  @override
  $UReplyRefRootCopyWith<$Res> get root;
  @override
  $UReplyRefParentCopyWith<$Res> get parent;
}

/// @nodoc
class __$$FeedDefsReplyRefImplCopyWithImpl<$Res>
    extends _$FeedDefsReplyRefCopyWithImpl<$Res, _$FeedDefsReplyRefImpl>
    implements _$$FeedDefsReplyRefImplCopyWith<$Res> {
  __$$FeedDefsReplyRefImplCopyWithImpl(_$FeedDefsReplyRefImpl _value,
      $Res Function(_$FeedDefsReplyRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? root = null,
    Object? parent = null,
  }) {
    return _then(_$FeedDefsReplyRefImpl(
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as UReplyRefRoot,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as UReplyRefParent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedDefsReplyRefImpl implements _FeedDefsReplyRef {
  const _$FeedDefsReplyRefImpl(
      {@unionReplyRefRoot required this.root,
      @unionReplyRefParent required this.parent});

  factory _$FeedDefsReplyRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedDefsReplyRefImplFromJson(json);

  @override
  @unionReplyRefRoot
  final UReplyRefRoot root;
  @override
  @unionReplyRefParent
  final UReplyRefParent parent;

  @override
  String toString() {
    return 'FeedDefsReplyRef(root: $root, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDefsReplyRefImpl &&
            (identical(other.root, root) || other.root == root) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, root, parent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDefsReplyRefImplCopyWith<_$FeedDefsReplyRefImpl> get copyWith =>
      __$$FeedDefsReplyRefImplCopyWithImpl<_$FeedDefsReplyRefImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedDefsReplyRefImplToJson(
      this,
    );
  }
}

abstract class _FeedDefsReplyRef implements FeedDefsReplyRef {
  const factory _FeedDefsReplyRef(
          {@unionReplyRefRoot required final UReplyRefRoot root,
          @unionReplyRefParent required final UReplyRefParent parent}) =
      _$FeedDefsReplyRefImpl;

  factory _FeedDefsReplyRef.fromJson(Map<String, dynamic> json) =
      _$FeedDefsReplyRefImpl.fromJson;

  @override
  @unionReplyRefRoot
  UReplyRefRoot get root;
  @override
  @unionReplyRefParent
  UReplyRefParent get parent;
  @override
  @JsonKey(ignore: true)
  _$$FeedDefsReplyRefImplCopyWith<_$FeedDefsReplyRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
