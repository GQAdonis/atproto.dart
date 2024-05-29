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
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_viewer_state.freezed.dart';
part 'list_viewer_state.g.dart';

@freezed
class ListViewerState with _$ListViewerState {
  @jsonSerializable
  const factory ListViewerState({
    bool? muted,
    @atUriConverter AtUri? blocked,
  }) = _ListViewerState;

  factory ListViewerState.fromJson(Map<String, Object?> json) =>
      _$ListViewerStateFromJson(json);
}
