// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// coverage:ignore-file
// ignore_for_file: type=lint
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Lex Generator
// **************************************************************************

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../../../ids.g.dart';
import '../../../../app/bsky/feed/defs/union_reason.dart';

part 'skeleton_feed_post.freezed.dart';
part 'skeleton_feed_post.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/defs#skeletonfeedpost
@freezed
class SkeletonFeedPost with _$SkeletonFeedPost {
  @JsonSerializable(includeIfNull: false)
  const factory SkeletonFeedPost({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.feed.defs#skeletonFeedPost`
    @Default(appBskyFeedDefsSkeletonFeedPost)
    @JsonKey(name: r'$type')
    String $type,
    @AtUriConverter() required AtUri post,
    @UReasonConverter() UReason? reason,

    /// Context that will be passed through to client and may be passed to feed generator back alongside interactions.
    String? feedContext,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _SkeletonFeedPost;

  factory SkeletonFeedPost.fromJson(Map<String, dynamic> json) =>
      _$SkeletonFeedPostFromJson(json);
}

/// Returns true if [object] is [SkeletonFeedPost], otherwise false.
bool isSkeletonFeedPost(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.feed.defs#skeletonFeedPost';
}

extension $SkeletonFeedPostExtension on SkeletonFeedPost {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'post',
  'reason',
  'feedContext',
];

final class SkeletonFeedPostConverter
    implements JsonConverter<SkeletonFeedPost, Map<String, dynamic>> {
  const SkeletonFeedPostConverter();

  @override
  SkeletonFeedPost fromJson(Map<String, dynamic> json) {
    final props = <String, dynamic>{};
    for (final key in json.keys) {
      if (_kLexCompatibleProperties.contains(key)) {
        props[key] = json[key];
      } else {
        if (props.containsKey(r'$unknown')) {
          props[r'$unknown'][key] = json[key];
        } else {
          props[r'$unknown'] = <String, dynamic>{};
          props[r'$unknown'][key] = json[key];
        }
      }
    }

    return SkeletonFeedPost.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(SkeletonFeedPost object) {
    if (object.hasNotUnknown) {
      return object.toJson();
    }

    final json = object.toJson();

    final props = <String, dynamic>{};
    for (final key in json.keys) {
      if (key == r'$unknown') continue;
      props[key] = json[key];
    }

    return <String, dynamic>{
      ...props,
      ...json[r'$unknown'],
    };
  }
}
