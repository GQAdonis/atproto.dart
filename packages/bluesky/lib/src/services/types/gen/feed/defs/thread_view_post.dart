// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../../ids.g.dart';
import '../../../../../lex_annotations.g.dart' as lex;
import 'post_view.dart';
import 'unions/thread_view_post_parent.dart';
import 'unions/thread_view_post_replies.dart';

part 'thread_view_post.freezed.dart';
part 'thread_view_post.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/defs#threadviewpost
@freezed
@lex.appBskyFeedDefsThreadViewPost
class ThreadViewPost with _$ThreadViewPost {
  const factory ThreadViewPost({
    @typeKey @Default(appBskyFeedDefsThreadViewPost) String type,
    required PostView post,
    @unionThreadViewPostParent UThreadViewPostParent? parent,
    @unionThreadViewPostReplies List<UThreadViewPostReplies>? replies,
  }) = _ThreadViewPost;

  factory ThreadViewPost.fromJson(Map<String, Object?> json) =>
      _$ThreadViewPostFromJson(json);
}
