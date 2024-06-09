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
import '../../../../../../ids.g.dart';

part 'generator_viewer_state.freezed.dart';
part 'generator_viewer_state.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/defs#generatorviewerstate
@freezed
class GeneratorViewerState with _$GeneratorViewerState {
  @JsonSerializable(includeIfNull: false)
  const factory GeneratorViewerState({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.feed.defs#generatorViewerState`
    @Default(appBskyFeedDefsGeneratorViewerState)
    @JsonKey(name: r'$type')
    String $type,
    @AtUriConverter() AtUri? like,

    /// Contains unknown objects not defined in Lexicon.
    @Default({}) @JsonKey(name: r'$unknown') Map<String, dynamic> $unknown,
  }) = _GeneratorViewerState;

  factory GeneratorViewerState.fromJson(Map<String, Object?> json) =>
      _$GeneratorViewerStateFromJson(json);
}

extension GeneratorViewerStateExtension on GeneratorViewerState {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'like',
];

final class GeneratorViewerStateConverter
    implements JsonConverter<Map<String, dynamic>, Map<String, dynamic>> {
  const GeneratorViewerStateConverter();

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
