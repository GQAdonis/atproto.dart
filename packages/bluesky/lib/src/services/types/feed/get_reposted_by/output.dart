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
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../actor/defs/profile_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/getRepostedBy#main
@freezed
class GetRepostedByOutput with _$GetRepostedByOutput {
  @JsonSerializable(includeIfNull: false)
  const factory GetRepostedByOutput({
    @AtUriConverter() required AtUri uri,
    String? cid,
    String? cursor,
    required List<ProfileView> repostedBy,

    /// Contains unknown objects not defined in Lexicon.
    @Default({}) @JsonKey(name: r'$unknown') Map<String, dynamic> $unknown,
  }) = _GetRepostedByOutput;

  factory GetRepostedByOutput.fromJson(Map<String, Object?> json) =>
      _$GetRepostedByOutputFromJson(json);
}

const _kLexCompatibleProperties = <String>[
  'uri',
  'cid',
  'cursor',
  'repostedBy',
];

final class GetRepostedByOutputConverter
    implements JsonConverter<Map<String, dynamic>, Map<String, dynamic>> {
  const GetRepostedByOutputConverter();

  @override
  Map<String, dynamic> fromJson(Map<String, dynamic> json) {
    if (_kLexCompatibleProperties.length == json.length) {
      return json;
    }

    final lexCompatiblePropertiesWithUnknown = <String, dynamic>{
      r'$unknown': <String, dynamic>{}
    };
    for (final key in json.keys) {
      if (_kLexCompatibleProperties.contains(key)) {
        lexCompatiblePropertiesWithUnknown[key] = json[key];
      } else {
        lexCompatiblePropertiesWithUnknown[r'$unknown'][key] = json[key];
      }
    }

    return lexCompatiblePropertiesWithUnknown;
  }

  @override
  Map<String, dynamic> toJson(Map<String, dynamic> object) {
    if (object[r'$unknown']?.isEmpty ?? true) {
      return object;
    }

    final lexCompatibleProperties = <String, dynamic>{};
    for (final key in object.keys) {
      if (_kLexCompatibleProperties.contains(key)) {
        lexCompatibleProperties[key] = object[key];
      }
    }

    return <String, dynamic>{
      ...lexCompatibleProperties,
      ...object[r'$unknown'],
    };
  }
}
