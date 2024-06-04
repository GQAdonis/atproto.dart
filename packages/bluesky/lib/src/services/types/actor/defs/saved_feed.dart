// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// coverage:ignore-file
// ignore_for_file: type=lint
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Lex Object Generator
// **************************************************************************

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'saved_feed_type.dart';

part 'saved_feed.freezed.dart';
part 'saved_feed.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs#savedfeed
@freezed
class SavedFeed with _$SavedFeed {
  @jsonSerializable
  const factory SavedFeed({
    required String id,
    @SavedFeedTypeConverter() required SavedFeedType type,
    required String value,
    required bool pinned,
  }) = _SavedFeed;

  factory SavedFeed.fromJson(Map<String, Object?> json) =>
      _$SavedFeedFromJson(json);
}
