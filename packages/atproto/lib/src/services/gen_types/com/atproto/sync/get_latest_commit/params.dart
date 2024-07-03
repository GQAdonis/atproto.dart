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

/// https://atprotodart.com/docs/lexicons/com/atproto/sync/getLatestCommit#main
@freezed
class GetLatestCommitParams with _$GetLatestCommitParams {
  @JsonSerializable(includeIfNull: false)
  const factory GetLatestCommitParams({
    /// The DID of the repo.
    required String did,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _GetLatestCommitParams;

  factory GetLatestCommitParams.fromJson(Map<String, dynamic> json) =>
      _$GetLatestCommitParamsFromJson(json);
}

extension $GetLatestCommitParamsExtension on GetLatestCommitParams {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'did',
];

final class GetLatestCommitParamsConverter
    implements JsonConverter<GetLatestCommitParams, Map<String, dynamic>> {
  const GetLatestCommitParamsConverter();

  @override
  GetLatestCommitParams fromJson(Map<String, dynamic> json) {
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

    return GetLatestCommitParams.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(GetLatestCommitParams object) {
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
