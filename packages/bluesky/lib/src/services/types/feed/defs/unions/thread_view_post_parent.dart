// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../../ids.g.dart' as ids;
import '../blocked_post.dart';
import '../not_found_post.dart';
import '../thread_view_post.dart';

part 'thread_view_post_parent.freezed.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/defs#threadviewpost
@freezed
class UThreadViewPostParent with _$UThreadViewPostParent {
  // ignore: unused_element
  const UThreadViewPostParent._();

  const factory UThreadViewPostParent.threadViewPost({
    required FeedDefsThreadViewPost data,
  }) = UThreadViewPostParentThreadViewPost;

  const factory UThreadViewPostParent.notFoundPost({
    required FeedDefsNotFoundPost data,
  }) = UThreadViewPostParentNotFoundPost;

  const factory UThreadViewPostParent.blockedPost({
    required FeedDefsBlockedPost data,
  }) = UThreadViewPostParentBlockedPost;

  const factory UThreadViewPostParent.unknown({
    required Map<String, dynamic> data,
  }) = UThreadViewPostParentUnknown;
}

const unionThreadViewPostParent = _UThreadViewPostParentConverter();

final class _UThreadViewPostParentConverter
    implements JsonConverter<UThreadViewPostParent, Map<String, dynamic>> {
  const _UThreadViewPostParentConverter();

  @override
  UThreadViewPostParent fromJson(Map<String, dynamic> json) {
    try {
      final type = json[core.objectType];

      if (type == ids.appBskyFeedDefsThreadViewPost) {
        return UThreadViewPostParent.threadViewPost(
          data: FeedDefsThreadViewPost.fromJson(json),
        );
      }
      if (type == ids.appBskyFeedDefsNotFoundPost) {
        return UThreadViewPostParent.notFoundPost(
          data: FeedDefsNotFoundPost.fromJson(json),
        );
      }
      if (type == ids.appBskyFeedDefsBlockedPost) {
        return UThreadViewPostParent.blockedPost(
          data: FeedDefsBlockedPost.fromJson(json),
        );
      }

      return UThreadViewPostParent.unknown(data: json);
    } catch (_) {
      return UThreadViewPostParent.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UThreadViewPostParent object) => object.when(
        threadViewPost: (data) => data.toJson(),
        notFoundPost: (data) => data.toJson(),
        blockedPost: (data) => data.toJson(),
        unknown: (data) => data,
      );
}
