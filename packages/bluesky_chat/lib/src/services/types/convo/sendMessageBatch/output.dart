// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../defs/message_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/chat/bsky/convo/sendMessageBatch/#output
@freezed
class ConvoSendMessageBatch with _$ConvoSendMessageBatch {
  @jsonSerializable
  const factory ConvoSendMessageBatch({
    required List<ConvoMessageView> items,
  }) = _ConvoSendMessageBatch;

  factory ConvoSendMessageBatch.fromJson(Map<String, Object?> json) =>
      _$ConvoSendMessageBatchFromJson(json);
}
