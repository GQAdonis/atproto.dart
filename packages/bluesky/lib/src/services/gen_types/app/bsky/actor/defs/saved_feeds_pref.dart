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

part 'saved_feeds_pref.freezed.dart';
part 'saved_feeds_pref.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs#savedfeedspref
@freezed
class SavedFeedsPref with _$SavedFeedsPref {
  @JsonSerializable(includeIfNull: false)
  const factory SavedFeedsPref({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.actor.defs#savedFeedsPref`
    @Default(appBskyActorDefsSavedFeedsPref)
    @JsonKey(name: r'$type')
    String $type,
    @AtUriConverter() required List<AtUri> pinned,
    @AtUriConverter() required List<AtUri> saved,
    @Default(0) int timelineIndex,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _SavedFeedsPref;

  factory SavedFeedsPref.fromJson(Map<String, dynamic> json) =>
      _$SavedFeedsPrefFromJson(json);
}

/// Returns true if [object] is [SavedFeedsPref], otherwise false.
bool isSavedFeedsPref(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.actor.defs#savedFeedsPref';
}

extension $SavedFeedsPrefExtension on SavedFeedsPref {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'pinned',
  'saved',
  'timelineIndex',
];

final class SavedFeedsPrefConverter
    implements JsonConverter<SavedFeedsPref, Map<String, dynamic>> {
  const SavedFeedsPrefConverter();

  @override
  SavedFeedsPref fromJson(Map<String, dynamic> json) {
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

    return SavedFeedsPref.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(SavedFeedsPref object) {
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
