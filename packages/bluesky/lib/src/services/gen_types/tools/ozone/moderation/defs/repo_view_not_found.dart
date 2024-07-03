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
import '../../../../../../ids.g.dart';

part 'repo_view_not_found.freezed.dart';
part 'repo_view_not_found.g.dart';

/// https://atprotodart.com/docs/lexicons/tools/ozone/moderation/defs#repoviewnotfound
@freezed
class RepoViewNotFound with _$RepoViewNotFound {
  @JsonSerializable(includeIfNull: false)
  const factory RepoViewNotFound({
    /// The unique namespace for this lex object.
    ///
    /// `tools.ozone.moderation.defs#repoViewNotFound`
    @Default(toolsOzoneModerationDefsRepoViewNotFound)
    @JsonKey(name: r'$type')
    String $type,
    required String did,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _RepoViewNotFound;

  factory RepoViewNotFound.fromJson(Map<String, dynamic> json) =>
      _$RepoViewNotFoundFromJson(json);
}

/// Returns true if [object] is [RepoViewNotFound], otherwise false.
bool isRepoViewNotFound(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'tools.ozone.moderation.defs#repoViewNotFound';
}

extension $RepoViewNotFoundExtension on RepoViewNotFound {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'did',
];

final class RepoViewNotFoundConverter
    implements JsonConverter<RepoViewNotFound, Map<String, dynamic>> {
  const RepoViewNotFoundConverter();

  @override
  RepoViewNotFound fromJson(Map<String, dynamic> json) {
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

    return RepoViewNotFound.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(RepoViewNotFound object) {
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
