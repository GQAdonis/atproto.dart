// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../ids.g.dart';
import '../unions/feed_threadgate_input_allow.dart';

part 'threadgate_record.freezed.dart';
part 'threadgate_record.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/threadgate/#input
///
/// An object representing the records in the created
/// [appBskyFeedThreadgate].
@freezed
class ThreadgateRecord with _$ThreadgateRecord {
  @jsonSerializable
  const factory ThreadgateRecord({
    @typeKey @Default(appBskyFeedThreadgate) String type,
    @atUriConverter @JsonKey(name: 'post') required AtUri postUri,
    @unionInputAllow @JsonKey(name: 'allow') List<UInputAllow>? allowRules,
    required DateTime createdAt,
  }) = _ThreadgateRecord;

  factory ThreadgateRecord.fromJson(Map<String, Object?> json) =>
      _$ThreadgateRecordFromJson(json);
}
