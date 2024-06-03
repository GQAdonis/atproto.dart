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
import '../../feed/defs/blocked_author.dart';

part 'record_view_blocked.freezed.dart';
part 'record_view_blocked.g.dart';

// https://atprotodart.com/docs/lexicons/app/bsky/embed/record#viewblocked
@freezed
class RecordViewBlocked with _$RecordViewBlocked {
  @jsonSerializable
  const factory RecordViewBlocked({
    @AtUriConverter() required AtUri uri,
    required bool blocked,
    required BlockedAuthor author,
  }) = _RecordViewBlocked;

  factory RecordViewBlocked.fromJson(Map<String, Object?> json) =>
      _$RecordViewBlockedFromJson(json);
}
