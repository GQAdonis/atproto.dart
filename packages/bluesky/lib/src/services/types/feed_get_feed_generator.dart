// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../lex_annotations.g.dart' as lex;
import 'feed_defs_generator_view.dart';

part 'feed_get_feed_generator.freezed.dart';
part 'feed_get_feed_generator.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/getfeedgenerator/#output
@freezed
@lex.appBskyFeedGetFeedGenerator
class FeedGetFeedGenerator with _$FeedGetFeedGenerator {
  @jsonSerializable
  const factory FeedGetFeedGenerator({
    required FeedDefsGeneratorView view,
    @Default(false) bool isOnline,
    @Default(false) bool isValid,
  }) = _FeedGetFeedGenerator;

  factory FeedGetFeedGenerator.fromJson(Map<String, Object?> json) =>
      _$FeedGetFeedGeneratorFromJson(json);
}
