// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto/atproto.dart';
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../lex_annotations.g.dart' as lex;
import 'actor_defs_viewer_state.dart';

part 'actor_defs_profile_view.freezed.dart';
part 'actor_defs_profile_view.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs/#profileview
@freezed
@lex.appBskyActorDefsProfileView
class ActorDefsProfileView with _$ActorDefsProfileView {
  @jsonSerializable
  const factory ActorDefsProfileView({
    required String did,
    required String handle,
    String? displayName,
    String? description,
    String? avatar,
    @Default(defaultActorDefsViewerState) ActorDefsViewerState viewer,
    List<Label>? labels,
    DateTime? indexedAt,
  }) = _ActorDefsProfileView;

  factory ActorDefsProfileView.fromJson(Map<String, Object?> json) =>
      _$ActorDefsProfileViewFromJson(json);
}

extension ActorDefsProfileViewExtension on ActorDefsProfileView {
  /// Returns true if authenticated user has muted this actor,
  /// otherwise false.
  bool get isMuted => viewer.isMuted;

  /// Returns true if authenticated user has not muted yet this actor,
  /// otherwise false.
  bool get isNotMuted => !isMuted;

  /// Returns true if authenticated user has blocked by this actor,
  /// otherwise false.
  bool get isBlockedBy => viewer.isBlockedBy;

  /// Returns true if authenticated user has not blocked yet by this actor,
  /// otherwise false.
  bool get isNotBlockedBy => !isBlockedBy;

  /// Returns true if authenticated user has already muted this actor by list,
  /// otherwise false.
  bool get isMutedByList => viewer.isMutedByList;

  /// Returns true if authenticated user has not muted yet this actor by list,
  /// otherwise false.
  bool get isNotMutedByList => !isMutedByList;

  /// Returns true if authenticated user has already blocked actors by list,
  /// otherwise false.
  bool get isBlockingByList => viewer.isBlockingByList;

  /// Returns true if authenticated user has not blocked yet blocked actors by
  /// list, otherwise false.
  bool get isNotBlockingByList => !isBlockingByList;

  /// Returns true if authenticated user has already blocked this actor,
  /// otherwise false.
  bool get isBlocking => viewer.isBlocking;

  /// Returns true if authenticated user has not blocked yet this actor,
  /// otherwise false.
  bool get isNotBlocking => !isBlocking;

  /// Returns true if authenticated user has already following this actor,
  /// otherwise false.
  bool get isFollowing => viewer.isFollowing;

  /// Returns true if authenticated user has not following yet this actor,
  /// otherwise false.
  bool get isNotFollowing => !isFollowing;

  /// Returns true if authenticated user has already followed by this actor,
  /// otherwise false.
  bool get isFollowedBy => viewer.isFollowedBy;

  /// Returns true if authenticated user has not followed by yet by this actor,
  /// otherwise false.
  bool get isNotFollowedBy => !isFollowedBy;
}
