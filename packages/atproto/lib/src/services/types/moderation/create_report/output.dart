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

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/moderation/createReport#main
@freezed
class CreateReportOutput with _$CreateReportOutput {
  @JsonSerializable(includeIfNull: false)
  const factory CreateReportOutput({
    required int id,
    required String reasonType,
    String? reason,
    required String subject,
    required String reportedBy,
    required DateTime createdAt,
  }) = _CreateReportOutput;

  factory CreateReportOutput.fromJson(Map<String, Object?> json) =>
      _$CreateReportOutputFromJson(json);
}
