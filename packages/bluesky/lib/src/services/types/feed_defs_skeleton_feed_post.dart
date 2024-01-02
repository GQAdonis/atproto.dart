// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../lex_annotations.g.dart' as lex;
import 'converters/skeleton_reason_converter.dart';
import 'unions/skeleton_reason.dart';

part 'feed_defs_skeleton_feed_post.freezed.dart';
part 'feed_defs_skeleton_feed_post.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/defs#skeletonfeedpost
@freezed
@lex.appBskyFeedDefsSkeletonFeedPost
class FeedDefsSkeletonFeedPost with _$FeedDefsSkeletonFeedPost {
  @jsonSerializable
  const factory FeedDefsSkeletonFeedPost({
    @atUriConverter required AtUri post,
    @skeletonReasonConverter SkeletonReason? reason,
  }) = _FeedDefsSkeletonFeedPost;

  factory FeedDefsSkeletonFeedPost.fromJson(Map<String, Object?> json) =>
      _$FeedDefsSkeletonFeedPostFromJson(json);
}
