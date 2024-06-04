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

// 🌎 Project imports:
import 'main_status.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/server/createSession#main
@freezed
class CreateSessionOutput with _$CreateSessionOutput {
  @jsonSerializable
  const factory CreateSessionOutput({
    required String accessJwt,
    required String refreshJwt,
    required String handle,
    required String did,
    @Default({}) Map<String, dynamic> didDoc,
    String? email,
    @Default(false) bool emailConfirmed,
    @Default(false) bool emailAuthFactor,
    @Default(false) bool active,

    /// If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted.
    @MainStatusConverter() MainStatus? status,
  }) = _CreateSessionOutput;

  factory CreateSessionOutput.fromJson(Map<String, Object?> json) =>
      _$CreateSessionOutputFromJson(json);
}
