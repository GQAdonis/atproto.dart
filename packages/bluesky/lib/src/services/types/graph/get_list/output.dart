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
import '../../graph/defs/list_item_view.dart';
import '../../graph/defs/list_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/graph/getList#main
@freezed
final class GetListOutput with _$GetListOutput {
  @JsonSerializable(includeIfNull: false)
  const factory GetListOutput({
    String? cursor,
    required ListView list,
    required List<ListItemView> items,
  }) = _GetListOutput;

  factory GetListOutput.fromJson(Map<String, Object?> json) =>
      _$GetListOutputFromJson(json);
}
