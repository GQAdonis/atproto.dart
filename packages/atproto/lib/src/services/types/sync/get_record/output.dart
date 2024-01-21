// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../lex_annotations.g.dart' as lex;

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/sync/getrecord/#output
@freezed
@lex.comAtprotoSyncGetRecord
class SyncGetRecordOutput with _$SyncGetRecordOutput {
  const factory SyncGetRecordOutput({
    required String cid,
    required Map<String, dynamic> commit,
  }) = _SyncGetRecordOutput;

  factory SyncGetRecordOutput.fromJson(Map<String, Object?> json) =>
      _$SyncGetRecordOutputFromJson(json);
}
