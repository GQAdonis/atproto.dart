// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_features.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UMainFeatures {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RichtextFacetMention data) mention,
    required TResult Function(RichtextFacetLink data) link,
    required TResult Function(RichtextFacetTag data) tag,
    required TResult Function(Map<String, dynamic> data) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RichtextFacetMention data)? mention,
    TResult? Function(RichtextFacetLink data)? link,
    TResult? Function(RichtextFacetTag data)? tag,
    TResult? Function(Map<String, dynamic> data)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RichtextFacetMention data)? mention,
    TResult Function(RichtextFacetLink data)? link,
    TResult Function(RichtextFacetTag data)? tag,
    TResult Function(Map<String, dynamic> data)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UMainFeaturesMention value) mention,
    required TResult Function(UMainFeaturesLink value) link,
    required TResult Function(UMainFeaturesTag value) tag,
    required TResult Function(UMainFeaturesUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UMainFeaturesMention value)? mention,
    TResult? Function(UMainFeaturesLink value)? link,
    TResult? Function(UMainFeaturesTag value)? tag,
    TResult? Function(UMainFeaturesUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UMainFeaturesMention value)? mention,
    TResult Function(UMainFeaturesLink value)? link,
    TResult Function(UMainFeaturesTag value)? tag,
    TResult Function(UMainFeaturesUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UMainFeaturesCopyWith<$Res> {
  factory $UMainFeaturesCopyWith(
          UMainFeatures value, $Res Function(UMainFeatures) then) =
      _$UMainFeaturesCopyWithImpl<$Res, UMainFeatures>;
}

/// @nodoc
class _$UMainFeaturesCopyWithImpl<$Res, $Val extends UMainFeatures>
    implements $UMainFeaturesCopyWith<$Res> {
  _$UMainFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UMainFeaturesMentionImplCopyWith<$Res> {
  factory _$$UMainFeaturesMentionImplCopyWith(_$UMainFeaturesMentionImpl value,
          $Res Function(_$UMainFeaturesMentionImpl) then) =
      __$$UMainFeaturesMentionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RichtextFacetMention data});

  $RichtextFacetMentionCopyWith<$Res> get data;
}

/// @nodoc
class __$$UMainFeaturesMentionImplCopyWithImpl<$Res>
    extends _$UMainFeaturesCopyWithImpl<$Res, _$UMainFeaturesMentionImpl>
    implements _$$UMainFeaturesMentionImplCopyWith<$Res> {
  __$$UMainFeaturesMentionImplCopyWithImpl(_$UMainFeaturesMentionImpl _value,
      $Res Function(_$UMainFeaturesMentionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UMainFeaturesMentionImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RichtextFacetMention,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RichtextFacetMentionCopyWith<$Res> get data {
    return $RichtextFacetMentionCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UMainFeaturesMentionImpl extends UMainFeaturesMention {
  const _$UMainFeaturesMentionImpl({required this.data}) : super._();

  @override
  final RichtextFacetMention data;

  @override
  String toString() {
    return 'UMainFeatures.mention(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UMainFeaturesMentionImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UMainFeaturesMentionImplCopyWith<_$UMainFeaturesMentionImpl>
      get copyWith =>
          __$$UMainFeaturesMentionImplCopyWithImpl<_$UMainFeaturesMentionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RichtextFacetMention data) mention,
    required TResult Function(RichtextFacetLink data) link,
    required TResult Function(RichtextFacetTag data) tag,
    required TResult Function(Map<String, dynamic> data) unknown,
  }) {
    return mention(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RichtextFacetMention data)? mention,
    TResult? Function(RichtextFacetLink data)? link,
    TResult? Function(RichtextFacetTag data)? tag,
    TResult? Function(Map<String, dynamic> data)? unknown,
  }) {
    return mention?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RichtextFacetMention data)? mention,
    TResult Function(RichtextFacetLink data)? link,
    TResult Function(RichtextFacetTag data)? tag,
    TResult Function(Map<String, dynamic> data)? unknown,
    required TResult orElse(),
  }) {
    if (mention != null) {
      return mention(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UMainFeaturesMention value) mention,
    required TResult Function(UMainFeaturesLink value) link,
    required TResult Function(UMainFeaturesTag value) tag,
    required TResult Function(UMainFeaturesUnknown value) unknown,
  }) {
    return mention(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UMainFeaturesMention value)? mention,
    TResult? Function(UMainFeaturesLink value)? link,
    TResult? Function(UMainFeaturesTag value)? tag,
    TResult? Function(UMainFeaturesUnknown value)? unknown,
  }) {
    return mention?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UMainFeaturesMention value)? mention,
    TResult Function(UMainFeaturesLink value)? link,
    TResult Function(UMainFeaturesTag value)? tag,
    TResult Function(UMainFeaturesUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (mention != null) {
      return mention(this);
    }
    return orElse();
  }
}

abstract class UMainFeaturesMention extends UMainFeatures {
  const factory UMainFeaturesMention(
      {required final RichtextFacetMention data}) = _$UMainFeaturesMentionImpl;
  const UMainFeaturesMention._() : super._();

  @override
  RichtextFacetMention get data;
  @JsonKey(ignore: true)
  _$$UMainFeaturesMentionImplCopyWith<_$UMainFeaturesMentionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UMainFeaturesLinkImplCopyWith<$Res> {
  factory _$$UMainFeaturesLinkImplCopyWith(_$UMainFeaturesLinkImpl value,
          $Res Function(_$UMainFeaturesLinkImpl) then) =
      __$$UMainFeaturesLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RichtextFacetLink data});

  $RichtextFacetLinkCopyWith<$Res> get data;
}

/// @nodoc
class __$$UMainFeaturesLinkImplCopyWithImpl<$Res>
    extends _$UMainFeaturesCopyWithImpl<$Res, _$UMainFeaturesLinkImpl>
    implements _$$UMainFeaturesLinkImplCopyWith<$Res> {
  __$$UMainFeaturesLinkImplCopyWithImpl(_$UMainFeaturesLinkImpl _value,
      $Res Function(_$UMainFeaturesLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UMainFeaturesLinkImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RichtextFacetLink,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RichtextFacetLinkCopyWith<$Res> get data {
    return $RichtextFacetLinkCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UMainFeaturesLinkImpl extends UMainFeaturesLink {
  const _$UMainFeaturesLinkImpl({required this.data}) : super._();

  @override
  final RichtextFacetLink data;

  @override
  String toString() {
    return 'UMainFeatures.link(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UMainFeaturesLinkImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UMainFeaturesLinkImplCopyWith<_$UMainFeaturesLinkImpl> get copyWith =>
      __$$UMainFeaturesLinkImplCopyWithImpl<_$UMainFeaturesLinkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RichtextFacetMention data) mention,
    required TResult Function(RichtextFacetLink data) link,
    required TResult Function(RichtextFacetTag data) tag,
    required TResult Function(Map<String, dynamic> data) unknown,
  }) {
    return link(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RichtextFacetMention data)? mention,
    TResult? Function(RichtextFacetLink data)? link,
    TResult? Function(RichtextFacetTag data)? tag,
    TResult? Function(Map<String, dynamic> data)? unknown,
  }) {
    return link?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RichtextFacetMention data)? mention,
    TResult Function(RichtextFacetLink data)? link,
    TResult Function(RichtextFacetTag data)? tag,
    TResult Function(Map<String, dynamic> data)? unknown,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UMainFeaturesMention value) mention,
    required TResult Function(UMainFeaturesLink value) link,
    required TResult Function(UMainFeaturesTag value) tag,
    required TResult Function(UMainFeaturesUnknown value) unknown,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UMainFeaturesMention value)? mention,
    TResult? Function(UMainFeaturesLink value)? link,
    TResult? Function(UMainFeaturesTag value)? tag,
    TResult? Function(UMainFeaturesUnknown value)? unknown,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UMainFeaturesMention value)? mention,
    TResult Function(UMainFeaturesLink value)? link,
    TResult Function(UMainFeaturesTag value)? tag,
    TResult Function(UMainFeaturesUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }
}

abstract class UMainFeaturesLink extends UMainFeatures {
  const factory UMainFeaturesLink({required final RichtextFacetLink data}) =
      _$UMainFeaturesLinkImpl;
  const UMainFeaturesLink._() : super._();

  @override
  RichtextFacetLink get data;
  @JsonKey(ignore: true)
  _$$UMainFeaturesLinkImplCopyWith<_$UMainFeaturesLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UMainFeaturesTagImplCopyWith<$Res> {
  factory _$$UMainFeaturesTagImplCopyWith(_$UMainFeaturesTagImpl value,
          $Res Function(_$UMainFeaturesTagImpl) then) =
      __$$UMainFeaturesTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RichtextFacetTag data});

  $RichtextFacetTagCopyWith<$Res> get data;
}

/// @nodoc
class __$$UMainFeaturesTagImplCopyWithImpl<$Res>
    extends _$UMainFeaturesCopyWithImpl<$Res, _$UMainFeaturesTagImpl>
    implements _$$UMainFeaturesTagImplCopyWith<$Res> {
  __$$UMainFeaturesTagImplCopyWithImpl(_$UMainFeaturesTagImpl _value,
      $Res Function(_$UMainFeaturesTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UMainFeaturesTagImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RichtextFacetTag,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RichtextFacetTagCopyWith<$Res> get data {
    return $RichtextFacetTagCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UMainFeaturesTagImpl extends UMainFeaturesTag {
  const _$UMainFeaturesTagImpl({required this.data}) : super._();

  @override
  final RichtextFacetTag data;

  @override
  String toString() {
    return 'UMainFeatures.tag(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UMainFeaturesTagImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UMainFeaturesTagImplCopyWith<_$UMainFeaturesTagImpl> get copyWith =>
      __$$UMainFeaturesTagImplCopyWithImpl<_$UMainFeaturesTagImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RichtextFacetMention data) mention,
    required TResult Function(RichtextFacetLink data) link,
    required TResult Function(RichtextFacetTag data) tag,
    required TResult Function(Map<String, dynamic> data) unknown,
  }) {
    return tag(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RichtextFacetMention data)? mention,
    TResult? Function(RichtextFacetLink data)? link,
    TResult? Function(RichtextFacetTag data)? tag,
    TResult? Function(Map<String, dynamic> data)? unknown,
  }) {
    return tag?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RichtextFacetMention data)? mention,
    TResult Function(RichtextFacetLink data)? link,
    TResult Function(RichtextFacetTag data)? tag,
    TResult Function(Map<String, dynamic> data)? unknown,
    required TResult orElse(),
  }) {
    if (tag != null) {
      return tag(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UMainFeaturesMention value) mention,
    required TResult Function(UMainFeaturesLink value) link,
    required TResult Function(UMainFeaturesTag value) tag,
    required TResult Function(UMainFeaturesUnknown value) unknown,
  }) {
    return tag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UMainFeaturesMention value)? mention,
    TResult? Function(UMainFeaturesLink value)? link,
    TResult? Function(UMainFeaturesTag value)? tag,
    TResult? Function(UMainFeaturesUnknown value)? unknown,
  }) {
    return tag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UMainFeaturesMention value)? mention,
    TResult Function(UMainFeaturesLink value)? link,
    TResult Function(UMainFeaturesTag value)? tag,
    TResult Function(UMainFeaturesUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (tag != null) {
      return tag(this);
    }
    return orElse();
  }
}

abstract class UMainFeaturesTag extends UMainFeatures {
  const factory UMainFeaturesTag({required final RichtextFacetTag data}) =
      _$UMainFeaturesTagImpl;
  const UMainFeaturesTag._() : super._();

  @override
  RichtextFacetTag get data;
  @JsonKey(ignore: true)
  _$$UMainFeaturesTagImplCopyWith<_$UMainFeaturesTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UMainFeaturesUnknownImplCopyWith<$Res> {
  factory _$$UMainFeaturesUnknownImplCopyWith(_$UMainFeaturesUnknownImpl value,
          $Res Function(_$UMainFeaturesUnknownImpl) then) =
      __$$UMainFeaturesUnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$UMainFeaturesUnknownImplCopyWithImpl<$Res>
    extends _$UMainFeaturesCopyWithImpl<$Res, _$UMainFeaturesUnknownImpl>
    implements _$$UMainFeaturesUnknownImplCopyWith<$Res> {
  __$$UMainFeaturesUnknownImplCopyWithImpl(_$UMainFeaturesUnknownImpl _value,
      $Res Function(_$UMainFeaturesUnknownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UMainFeaturesUnknownImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UMainFeaturesUnknownImpl extends UMainFeaturesUnknown {
  const _$UMainFeaturesUnknownImpl({required final Map<String, dynamic> data})
      : _data = data,
        super._();

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'UMainFeatures.unknown(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UMainFeaturesUnknownImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UMainFeaturesUnknownImplCopyWith<_$UMainFeaturesUnknownImpl>
      get copyWith =>
          __$$UMainFeaturesUnknownImplCopyWithImpl<_$UMainFeaturesUnknownImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RichtextFacetMention data) mention,
    required TResult Function(RichtextFacetLink data) link,
    required TResult Function(RichtextFacetTag data) tag,
    required TResult Function(Map<String, dynamic> data) unknown,
  }) {
    return unknown(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RichtextFacetMention data)? mention,
    TResult? Function(RichtextFacetLink data)? link,
    TResult? Function(RichtextFacetTag data)? tag,
    TResult? Function(Map<String, dynamic> data)? unknown,
  }) {
    return unknown?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RichtextFacetMention data)? mention,
    TResult Function(RichtextFacetLink data)? link,
    TResult Function(RichtextFacetTag data)? tag,
    TResult Function(Map<String, dynamic> data)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UMainFeaturesMention value) mention,
    required TResult Function(UMainFeaturesLink value) link,
    required TResult Function(UMainFeaturesTag value) tag,
    required TResult Function(UMainFeaturesUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UMainFeaturesMention value)? mention,
    TResult? Function(UMainFeaturesLink value)? link,
    TResult? Function(UMainFeaturesTag value)? tag,
    TResult? Function(UMainFeaturesUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UMainFeaturesMention value)? mention,
    TResult Function(UMainFeaturesLink value)? link,
    TResult Function(UMainFeaturesTag value)? tag,
    TResult Function(UMainFeaturesUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UMainFeaturesUnknown extends UMainFeatures {
  const factory UMainFeaturesUnknown(
      {required final Map<String, dynamic> data}) = _$UMainFeaturesUnknownImpl;
  const UMainFeaturesUnknown._() : super._();

  @override
  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$UMainFeaturesUnknownImplCopyWith<_$UMainFeaturesUnknownImpl>
      get copyWith => throw _privateConstructorUsedError;
}
