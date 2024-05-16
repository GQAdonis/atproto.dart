// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../defs/convo_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/chat/bsky/convo/getConvoForMembers/#main
@freezed
class ConvoGetConvoForMembers with _$ConvoGetConvoForMembers {
  @jsonSerializable
  const factory ConvoGetConvoForMembers({
    required ConvoView convo,
  }) = _ConvoGetConvoForMembers;

  factory ConvoGetConvoForMembers.fromJson(Map<String, Object?> json) =>
      _$ConvoGetConvoForMembersFromJson(json);
}
