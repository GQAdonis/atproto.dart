// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// coverage:ignore-file
// ignore_for_file: type=lint
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Lex Object Generator
// **************************************************************************

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../feed/defs/feed_view_post.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/getActorLikes#main
@freezed
final class GetActorLikesOutput with _$GetActorLikesOutput {
  @JsonSerializable(includeIfNull: false)
  const factory GetActorLikesOutput({
    String? cursor,
    required List<FeedViewPost> feed,
  }) = _GetActorLikesOutput;

  factory GetActorLikesOutput.fromJson(Map<String, Object?> json) =>
      _$GetActorLikesOutputFromJson(json);
}
