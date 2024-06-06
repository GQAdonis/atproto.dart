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
import '../../../../ids.g.dart';

part 'external.freezed.dart';
part 'external.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/embed/external#external
@freezed
final class ExternalExternal with _$ExternalExternal {
  @JsonSerializable(includeIfNull: false)
  const factory ExternalExternal({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.embed.external#external`
    @Default(appBskyEmbedExternalExternal)
    @JsonKey(name: r'$type')
    String $type,
    required String uri,
    required String title,
    required String description,
    @BlobConverter() Blob? thumb,
  }) = _ExternalExternal;

  factory ExternalExternal.fromJson(Map<String, Object?> json) =>
      _$ExternalExternalFromJson(json);
}
