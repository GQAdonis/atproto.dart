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

part 'feed_item.freezed.dart';
part 'feed_item.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/graph/starterpack#feeditem
@freezed
class FeedItem with _$FeedItem {
  @JsonSerializable(includeIfNull: false)
  const factory FeedItem({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.graph.starterpack#feedItem`
    @Default(appBskyGraphStarterpackFeedItem)
    @JsonKey(name: r'$type')
    String $type,
    @AtUriConverter() required AtUri uri,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _FeedItem;

  factory FeedItem.fromJson(Map<String, dynamic> json) =>
      _$FeedItemFromJson(json);
}

/// Returns true if [object] is [FeedItem], otherwise false.
bool isFeedItem(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.graph.starterpack#feedItem';
}

extension $FeedItemExtension on FeedItem {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'uri',
];

final class FeedItemConverter
    implements JsonConverter<FeedItem, Map<String, dynamic>> {
  const FeedItemConverter();

  @override
  FeedItem fromJson(Map<String, dynamic> json) {
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

    return FeedItem.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(FeedItem object) {
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
