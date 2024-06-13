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

// 🌎 Project imports:
import '../../../../app/bsky/actor/defs/profile_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/graph/getFollows#main
@freezed
class GetFollowsOutput with _$GetFollowsOutput {
  @JsonSerializable(includeIfNull: false)
  const factory GetFollowsOutput({
    @ProfileViewConverter() required ProfileView subject,
    String? cursor,
    @ProfileViewConverter() required List<ProfileView> follows,

    /// Contains unknown objects not defined in Lexicon.
    @Default({}) @JsonKey(name: r'$unknown') Map<String, dynamic> $unknown,
  }) = _GetFollowsOutput;

  factory GetFollowsOutput.fromJson(Map<String, dynamic> json) =>
      _$GetFollowsOutputFromJson(json);
}

extension $GetFollowsOutputExtension on GetFollowsOutput {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'subject',
  'cursor',
  'follows',
];

final class GetFollowsOutputConverter
    implements JsonConverter<GetFollowsOutput, Map<String, dynamic>> {
  const GetFollowsOutputConverter();

  @override
  GetFollowsOutput fromJson(Map<String, dynamic> json) {
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

    return GetFollowsOutput.fromJson(lexCompatiblePropertiesWithUnknown);
  }

  @override
  Map<String, dynamic> toJson(GetFollowsOutput object) {
    if (object.$unknown.isEmpty) {
      return object.toJson();
    }

    final json = object.toJson();

    final lexCompatibleProperties = <String, dynamic>{};
    for (final key in json.keys) {
      lexCompatibleProperties[key] = json[key];
    }

    return <String, dynamic>{
      ...lexCompatibleProperties,
      ...json[r'$unknown'],
    };
  }
}
