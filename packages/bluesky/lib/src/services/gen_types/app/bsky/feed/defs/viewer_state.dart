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

part 'viewer_state.freezed.dart';
part 'viewer_state.g.dart';

/// Metadata about the requesting account's relationship with the subject content. Only has meaningful content for authed requests.
///
/// https://atprotodart.com/docs/lexicons/app/bsky/feed/defs#viewerstate
@freezed
class ViewerState with _$ViewerState {
  @JsonSerializable(includeIfNull: false)
  const factory ViewerState({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.feed.defs#viewerState`
    @Default(appBskyFeedDefsViewerState) @JsonKey(name: r'$type') String $type,
    @AtUriConverter() AtUri? repost,
    @AtUriConverter() AtUri? like,
    @Default(false) bool threadMuted,
    @Default(false) bool replyDisabled,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _ViewerState;

  factory ViewerState.fromJson(Map<String, dynamic> json) =>
      _$ViewerStateFromJson(json);
}

/// Returns true if [object] is [ViewerState], otherwise false.
bool isViewerState(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.feed.defs#viewerState';
}

extension $ViewerStateExtension on ViewerState {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'repost',
  'like',
  'threadMuted',
  'replyDisabled',
];

final class ViewerStateConverter
    implements JsonConverter<ViewerState, Map<String, dynamic>> {
  const ViewerStateConverter();

  @override
  ViewerState fromJson(Map<String, dynamic> json) {
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

    return ViewerState.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(ViewerState object) {
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
