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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/server/reserveSigningKey#main
@freezed
final class ReserveSigningKeyOutput with _$ReserveSigningKeyOutput {
  @JsonSerializable(includeIfNull: false)
  const factory ReserveSigningKeyOutput({
    /// The public key for the reserved signing key, in did:key serialization.
    required String signingKey,
  }) = _ReserveSigningKeyOutput;

  factory ReserveSigningKeyOutput.fromJson(Map<String, Object?> json) =>
      _$ReserveSigningKeyOutputFromJson(json);
}
