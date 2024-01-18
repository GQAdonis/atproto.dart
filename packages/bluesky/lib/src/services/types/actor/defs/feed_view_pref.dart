// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../ids.g.dart';
import '../../../../lex_annotations.g.dart' as lex;

part 'feed_view_pref.freezed.dart';
part 'feed_view_pref.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs/#feedviewpref
@freezed
@lex.appBskyActorDefsFeedViewPref
class ActorDefsFeedViewPref with _$ActorDefsFeedViewPref {
  @jsonSerializable
  const factory ActorDefsFeedViewPref({
    @typeKey @Default(appBskyActorDefsFeedViewPref) String type,
    required String feed,
    @Default(false) bool hideReplies,
    @Default(false) bool hideRepliesByUnfollowed,
    @Default(0) int hideRepliesByLikeCount,
    @Default(false) bool hideReposts,
    @Default(false) bool hideQuotePosts,
  }) = _ActorDefsFeedViewPref;

  factory ActorDefsFeedViewPref.fromJson(Map<String, Object?> json) =>
      _$ActorDefsFeedViewPrefFromJson(json);
}
