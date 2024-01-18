// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../lex_annotations.g.dart' as lex;
import '../defs/post_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/getposts/#output
@freezed
@lex.appBskyFeedGetPosts
class FeedGetPostsOutput with _$FeedGetPostsOutput {
  const factory FeedGetPostsOutput({
    required List<FeedDefsPostView> posts,
  }) = _FeedGetPostsOutput;

  factory FeedGetPostsOutput.fromJson(Map<String, Object?> json) =>
      _$FeedGetPostsOutputFromJson(json);
}
