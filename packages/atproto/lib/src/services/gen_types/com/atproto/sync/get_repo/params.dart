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

part 'params.freezed.dart';
part 'params.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/sync/getRepo#main
@freezed
class GetRepoParams with _$GetRepoParams {
  @JsonSerializable(includeIfNull: false)
  const factory GetRepoParams({
    /// The DID of the repo.
    required String did,

    /// The revision ('rev') of the repo to create a diff from.
    String? since,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _GetRepoParams;

  factory GetRepoParams.fromJson(Map<String, dynamic> json) =>
      _$GetRepoParamsFromJson(json);
}

extension $GetRepoParamsExtension on GetRepoParams {
  /// Returns true if [since] is not null, otherwise false.
  bool get hasSince => since != null;

  /// Returns true if [since] is null, otherwise false.
  bool get hasNotSince => !hasSince;

  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'did',
  'since',
];

final class GetRepoParamsConverter
    implements JsonConverter<GetRepoParams, Map<String, dynamic>> {
  const GetRepoParamsConverter();

  @override
  GetRepoParams fromJson(Map<String, dynamic> json) {
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

    return GetRepoParams.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(GetRepoParams object) {
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
