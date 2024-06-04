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
import 'content_label_pref_visibility.dart';

part 'content_label_pref.freezed.dart';
part 'content_label_pref.g.dart';

// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs#contentlabelpref
@freezed
class ContentLabelPref with _$ContentLabelPref {
  @jsonSerializable
  const factory ContentLabelPref({
    /// Which labeler does this preference apply to? If undefined, applies globally.
    String? labelerDid,
    required String label,
    @ContentLabelPrefVisibilityConverter()
    required ContentLabelPrefVisibility visibility,
  }) = _ContentLabelPref;

  factory ContentLabelPref.fromJson(Map<String, Object?> json) =>
      _$ContentLabelPrefFromJson(json);
}
