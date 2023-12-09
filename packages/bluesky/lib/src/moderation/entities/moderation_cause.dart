// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'moderation_cause_block_other.dart';
import 'moderation_cause_blocked_by.dart';
import 'moderation_cause_blocking.dart';
import 'moderation_cause_label.dart';
import 'moderation_cause_muted.dart';
import 'moderation_object.dart';

part 'moderation_cause.freezed.dart';

@moderationObject
class ModerationCause with _$ModerationCause {
  const factory ModerationCause.blocking({
    required ModerationCauseBlocking data,
  }) = UModerationCauseBlocking;

  const factory ModerationCause.blockedBy({
    required ModerationCauseBlockedBy data,
  }) = UModerationCauseBlockedBy;

  const factory ModerationCause.blockOther({
    required ModerationCauseBlockOther data,
  }) = UModerationCauseBlockOther;

  const factory ModerationCause.label({
    required ModerationCauseLabel data,
  }) = UModerationCauseLabel;

  const factory ModerationCause.muted({
    required ModerationCauseMuted data,
  }) = UModerationCauseMuted;
}
