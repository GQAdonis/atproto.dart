// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../ids.g.dart';
import '../../lex_annotations.g.dart' as lex;
import 'graph_defs_list_viewer_state.dart';

part 'graph_defs_list_view_basic.freezed.dart';
part 'graph_defs_list_view_basic.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/graph/defs/#listviewbasic
@freezed
@lex.appBskyGraphDefsListViewBasic
class GraphDefsListViewBasic with _$GraphDefsListViewBasic {
  @jsonSerializable
  const factory GraphDefsListViewBasic({
    @typeKey @Default(appBskyGraphDefsListViewBasic) String type,
    @Default(appBskyGraphDefsModlist) String purpose,
    @atUriConverter required AtUri uri,
    required String cid,
    required String name,
    String? avatar,
    @Default(defaultGraphDefsListViewerState) GraphDefsListViewerState viewer,
    required DateTime indexedAt,
  }) = _GraphDefsListViewBasic;

  factory GraphDefsListViewBasic.fromJson(Map<String, Object?> json) =>
      _$GraphDefsListViewBasicFromJson(json);
}
