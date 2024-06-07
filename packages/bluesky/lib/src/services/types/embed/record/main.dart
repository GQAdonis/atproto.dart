// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// coverage:ignore-file
// ignore_for_file: type=lint
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Lex Generator
// **************************************************************************

// 📦 Package imports:
import 'package:atproto/com_atproto_repo_strong_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../ids.g.dart';

part 'main.freezed.dart';
part 'main.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/embed/record#main
@freezed
class Record with _$Record {
  @JsonSerializable(includeIfNull: false)
  const factory Record({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.embed.record`
    @Default(appBskyEmbedRecord) @JsonKey(name: r'$type') String $type,
    required StrongRef record,
  }) = _Record;

  factory Record.fromJson(Map<String, Object?> json) => _$RecordFromJson(json);
}
