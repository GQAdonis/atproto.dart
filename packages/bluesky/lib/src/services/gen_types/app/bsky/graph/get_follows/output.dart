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
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _GetFollowsOutput;

  factory GetFollowsOutput.fromJson(Map<String, dynamic> json) =>
      _$GetFollowsOutputFromJson(json);
}

extension $GetFollowsOutputExtension on GetFollowsOutput {
  /// Returns true if [cursor] is not null, otherwise false.
  bool get hasCursor => cursor != null;

  /// Returns true if [cursor] is null, otherwise false.
  bool get hasNotCursor => !hasCursor;

  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null;

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
    final props = <String, dynamic>{};
    for (final key in json.keys) {
      if (_kLexCompatibleProperties.contains(key)) {
        props[key] = json[key];
      } else {
        if (props.containsKey(r'$unknown')) {
          props[r'$unknown'][key] = json[key];
        } else {
          props[r'$unknown'] = <String, dynamic>{};
          props[r'$unknown'][key] = json[key];
        }
      }
    }

    return GetFollowsOutput.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(GetFollowsOutput object) {
    if (object.hasNotUnknown) {
      return object.toJson();
    }

    final json = object.toJson();

    final props = <String, dynamic>{};
    for (final key in json.keys) {
      if (key == r'$unknown') continue;
      props[key] = json[key];
    }

    return <String, dynamic>{
      ...props,
      ...json[r'$unknown'],
    };
  }
}
