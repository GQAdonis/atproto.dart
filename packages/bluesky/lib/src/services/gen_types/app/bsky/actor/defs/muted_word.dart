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
import '../../../../app/bsky/actor/defs/known_muted_word_target.dart';

part 'muted_word.freezed.dart';
part 'muted_word.g.dart';

/// A word that the account owner has muted.
///
/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs#mutedword
@freezed
class MutedWord with _$MutedWord {
  @JsonSerializable(includeIfNull: false)
  const factory MutedWord({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.actor.defs#mutedWord`
    @Default(appBskyActorDefsMutedWord) @JsonKey(name: r'$type') String $type,

    /// The muted word itself.
    required String value,

    /// The intended targets of the muted word.
    @UMutedWordTargetConverter() required List<UMutedWordTarget> targets,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _MutedWord;

  factory MutedWord.fromJson(Map<String, dynamic> json) =>
      _$MutedWordFromJson(json);
}

/// Returns true if [object] is [MutedWord], otherwise false.
bool isMutedWord(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.actor.defs#mutedWord';
}

extension $MutedWordExtension on MutedWord {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'value',
  'targets',
];

final class MutedWordConverter
    implements JsonConverter<MutedWord, Map<String, dynamic>> {
  const MutedWordConverter();

  @override
  MutedWord fromJson(Map<String, dynamic> json) {
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

    return MutedWord.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(MutedWord object) {
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
