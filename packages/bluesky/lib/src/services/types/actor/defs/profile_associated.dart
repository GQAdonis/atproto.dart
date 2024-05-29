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
import 'profile_associated_chat.dart';

part 'profile_associated.freezed.dart';
part 'profile_associated.g.dart';

@freezed
class ProfileAssociated with _$ProfileAssociated {
  @jsonSerializable
  const factory ProfileAssociated({
    int? lists,
    int? feedgens,
    bool? labeler,
    ProfileAssociatedChat? chat,
  }) = _ProfileAssociated;

  factory ProfileAssociated.fromJson(Map<String, Object?> json) =>
      _$ProfileAssociatedFromJson(json);
}
