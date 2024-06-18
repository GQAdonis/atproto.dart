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
import '../../../../com/atproto/sync/subscribe_repos/known_action.dart';

part 'repo_op.freezed.dart';
part 'repo_op.g.dart';

/// A repo operation, ie a mutation of a single record.
///
/// https://atprotodart.com/docs/lexicons/com/atproto/sync/subscribeRepos#repoop
@freezed
class RepoOp with _$RepoOp {
  @JsonSerializable(includeIfNull: false)
  const factory RepoOp({
    /// The unique namespace for this lex object.
    ///
    /// `com.atproto.sync.subscribeRepos#repoOp`
    @Default(comAtprotoSyncSubscribeReposRepoOp)
    @JsonKey(name: r'$type')
    String $type,
    @UActionConverter() required UAction action,
    required String path,

    /// For creates and updates, the new record CID. For deletions, null.
    String? cid,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _RepoOp;

  factory RepoOp.fromJson(Map<String, dynamic> json) => _$RepoOpFromJson(json);
}

/// Returns true if [object] is [RepoOp], otherwise false.
bool isRepoOp(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'com.atproto.sync.subscribeRepos#repoOp';
}

extension $RepoOpExtension on RepoOp {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'action',
  'path',
  'cid',
];

final class RepoOpConverter
    implements JsonConverter<RepoOp, Map<String, dynamic>> {
  const RepoOpConverter();

  @override
  RepoOp fromJson(Map<String, dynamic> json) {
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

    return RepoOp.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(RepoOp object) {
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
