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
class ReasonRepost with _$ReasonRepost {
  const factory ReasonRepost({
    @typeKey @Default(appBskyFeedDefsReasonRepost) String type,
    required ProfileViewBasic by,
    required DateTime indexedAt,
  }) = _ReasonRepost;

  factory ReasonRepost.fromJson(Map<String, Object?> json) =>
      _$ReasonRepostFromJson(json);
}
