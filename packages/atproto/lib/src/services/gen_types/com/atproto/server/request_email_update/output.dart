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

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/server/requestEmailUpdate#main
@freezed
class RequestEmailUpdateOutput with _$RequestEmailUpdateOutput {
  @JsonSerializable(includeIfNull: false)
  const factory RequestEmailUpdateOutput({
    required bool tokenRequired,

    /// Contains unknown objects not defined in Lexicon.
    @Default({}) @JsonKey(name: r'$unknown') Map<String, dynamic> $unknown,
  }) = _RequestEmailUpdateOutput;

  factory RequestEmailUpdateOutput.fromJson(Map<String, dynamic> json) =>
      _$RequestEmailUpdateOutputFromJson(json);
}

extension $RequestEmailUpdateOutputExtension on RequestEmailUpdateOutput {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'tokenRequired',
];

final class RequestEmailUpdateOutputConverter
    implements JsonConverter<RequestEmailUpdateOutput, Map<String, dynamic>> {
  const RequestEmailUpdateOutputConverter();

  @override
  RequestEmailUpdateOutput fromJson(Map<String, dynamic> json) {
    if (_kLexCompatibleProperties.length == json.length) {
      return RequestEmailUpdateOutput.fromJson(json);
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

    return RequestEmailUpdateOutput.fromJson(
        lexCompatiblePropertiesWithUnknown);
  }

  @override
  Map<String, dynamic> toJson(RequestEmailUpdateOutput object) {
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
