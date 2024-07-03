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
import '../../../../app/bsky/actor/defs/known_thread_view_pref_sort.dart';

part 'thread_view_pref.freezed.dart';
part 'thread_view_pref.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs#threadviewpref
@freezed
class ThreadViewPref with _$ThreadViewPref {
  @JsonSerializable(includeIfNull: false)
  const factory ThreadViewPref({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.actor.defs#threadViewPref`
    @Default(appBskyActorDefsThreadViewPref)
    @JsonKey(name: r'$type')
    String $type,

    /// Sorting mode for threads.
    @UThreadViewPrefSortConverter() UThreadViewPrefSort? sort,

    /// Show followed users at the top of all replies.
    @Default(false) bool prioritizeFollowedUsers,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _ThreadViewPref;

  factory ThreadViewPref.fromJson(Map<String, dynamic> json) =>
      _$ThreadViewPrefFromJson(json);
}

/// Returns true if [object] is [ThreadViewPref], otherwise false.
bool isThreadViewPref(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.actor.defs#threadViewPref';
}

extension $ThreadViewPrefExtension on ThreadViewPref {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'sort',
  'prioritizeFollowedUsers',
];

final class ThreadViewPrefConverter
    implements JsonConverter<ThreadViewPref, Map<String, dynamic>> {
  const ThreadViewPrefConverter();

  @override
  ThreadViewPref fromJson(Map<String, dynamic> json) {
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

    return ThreadViewPref.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(ThreadViewPref object) {
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
