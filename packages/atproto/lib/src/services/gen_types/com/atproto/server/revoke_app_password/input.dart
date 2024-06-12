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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input.freezed.dart';
part 'input.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/server/revokeAppPassword#main
@freezed
class RevokeAppPasswordInput with _$RevokeAppPasswordInput {
  @JsonSerializable(includeIfNull: false)
  const factory RevokeAppPasswordInput({
    required String name,

    /// Contains unknown objects not defined in Lexicon.
    @Default({}) @JsonKey(name: r'$unknown') Map<String, dynamic> $unknown,
  }) = _RevokeAppPasswordInput;

  factory RevokeAppPasswordInput.fromJson(Map<String, dynamic> json) =>
      _$RevokeAppPasswordInputFromJson(json);
}

extension $RevokeAppPasswordInputExtension on RevokeAppPasswordInput {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'name',
];

final class RevokeAppPasswordInputConverter
    implements JsonConverter<RevokeAppPasswordInput, Map<String, dynamic>> {
  const RevokeAppPasswordInputConverter();

  @override
  RevokeAppPasswordInput fromJson(Map<String, dynamic> json) {
    if (_kLexCompatibleProperties.length == json.length) {
      return RevokeAppPasswordInput.fromJson(json);
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

    return RevokeAppPasswordInput.fromJson(lexCompatiblePropertiesWithUnknown);
  }

  @override
  Map<String, dynamic> toJson(RevokeAppPasswordInput object) {
    if (object.$unknown.isEmpty) {
      return object.toJson();
    }

    final json = object.toJson();

    final lexCompatibleProperties = <String, dynamic>{};
    for (final key in json.keys) {
      if (_kLexCompatibleProperties.contains(key)) {
        lexCompatibleProperties[key] = json[key];
      }
    }

    return <String, dynamic>{
      ...lexCompatibleProperties,
      ...json[r'$unknown'],
    };
  }
}
