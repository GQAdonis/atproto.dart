// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../ids.g.dart';
import '../../lex_annotations.g.dart' as lex;
import 'actor_defs_profile_view_basic.dart';

part 'feed_defs_reason_repost.freezed.dart';
part 'feed_defs_reason_repost.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/defs/#reasonrepost
@freezed
@lex.appBskyFeedDefsReasonRepost
class FeedDefsReasonRepost with _$FeedDefsReasonRepost {
  const factory FeedDefsReasonRepost({
    @typeKey @Default(appBskyFeedDefsReasonRepost) String type,
    required ActorDefsProfileViewBasic by,
    required DateTime indexedAt,
  }) = _FeedDefsReasonRepost;

  factory FeedDefsReasonRepost.fromJson(Map<String, Object?> json) =>
      _$FeedDefsReasonRepostFromJson(json);
}
