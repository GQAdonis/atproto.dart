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
import 'converters/embed_view_record_view_converter.dart';
import 'unions/embed_view_record_view.dart';

part 'embed_record_view.freezed.dart';
part 'embed_record_view.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/embed/record#view
@freezed
@lex.appBskyEmbedRecordView
class EmbedRecordView with _$EmbedRecordView {
  const factory EmbedRecordView({
    @typeKey @Default(appBskyEmbedRecordView) String type,
    @embedViewRecordViewConverter required EmbedViewRecordView record,
  }) = _EmbedRecordView;

  factory EmbedRecordView.fromJson(Map<String, Object?> json) =>
      _$EmbedRecordViewFromJson(json);
}
