// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../mod_object.dart';
import 'moderation_cause_block_other.dart';
import 'moderation_cause_blocked_by.dart';
import 'moderation_cause_blocking.dart';
import 'moderation_cause_hidden.dart';
import 'moderation_cause_label.dart';
import 'moderation_cause_mute_word.dart';
import 'moderation_cause_muted.dart';

part 'moderation_cause.freezed.dart';

@modObject
class ModerationCause with _$ModerationCause {
  // ignore: unused_element
  const ModerationCause._();

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

  const factory ModerationCause.muteWord({
    required ModerationCauseMuteWord data,
  }) = UModerationCauseMuteWord;

  const factory ModerationCause.hidden({
    required ModerationCauseHidden data,
  }) = UModerationCauseHidden;

  bool get downgraded => map(
        blocking: (data) => data.downgraded,
        blockedBy: (data) => data.downgraded,
        blockOther: (data) => data.downgraded,
        label: (data) => data.downgraded,
        muted: (data) => data.downgraded,
        muteWord: (data) => data.downgraded,
        hidden: (data) => data.downgraded,
      );
}
