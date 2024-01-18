// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../lex_annotations.g.dart' as lex;

part 'viewer_state.freezed.dart';
part 'viewer_state.g.dart';

const defaultFeedDefsViewerState = FeedDefsViewerState();

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/defs/#viewerstate
@freezed
@lex.appBskyFeedDefsViewerState
class FeedDefsViewerState with _$FeedDefsViewerState {
  @jsonSerializable
  const factory FeedDefsViewerState({
    @atUriConverter AtUri? repost,
    @atUriConverter AtUri? like,
    @Default(false) bool replyDisabled,
  }) = _FeedDefsViewerState;

  factory FeedDefsViewerState.fromJson(Map<String, Object?> json) =>
      _$FeedDefsViewerStateFromJson(json);
}
