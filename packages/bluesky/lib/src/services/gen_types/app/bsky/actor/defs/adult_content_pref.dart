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

part 'adult_content_pref.freezed.dart';
part 'adult_content_pref.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs#adultcontentpref
@freezed
class AdultContentPref with _$AdultContentPref {
  @JsonSerializable(includeIfNull: false)
  const factory AdultContentPref({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.actor.defs#adultContentPref`
    @Default(appBskyActorDefsAdultContentPref)
    @JsonKey(name: r'$type')
    String $type,
    required bool enabled,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _AdultContentPref;

  factory AdultContentPref.fromJson(Map<String, dynamic> json) =>
      _$AdultContentPrefFromJson(json);
}

/// Returns true if [object] is [AdultContentPref], otherwise false.
bool isAdultContentPref(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.actor.defs#adultContentPref';
}

extension $AdultContentPrefExtension on AdultContentPref {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'enabled',
];

final class AdultContentPrefConverter
    implements JsonConverter<AdultContentPref, Map<String, dynamic>> {
  const AdultContentPrefConverter();

  @override
  AdultContentPref fromJson(Map<String, dynamic> json) {
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

    return AdultContentPref.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(AdultContentPref object) {
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
