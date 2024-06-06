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
import '../../actor/defs/profile_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/getRepostedBy#main
@freezed
final class GetRepostedByOutput with _$GetRepostedByOutput {
  @JsonSerializable(includeIfNull: false)
  const factory GetRepostedByOutput({
    @AtUriConverter() required AtUri uri,
    String? cid,
    String? cursor,
    required List<ProfileView> repostedBy,
  }) = _GetRepostedByOutput;

  factory GetRepostedByOutput.fromJson(Map<String, Object?> json) =>
      _$GetRepostedByOutputFromJson(json);
}
