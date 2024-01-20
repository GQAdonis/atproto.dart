// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../lex_annotations.g.dart' as lex;

part 'email_update.freezed.dart';
part 'email_update.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/server/requestemailupdate/#output
@freezed
@lex.comAtprotoServerRequestEmailUpdate
@Deprecated('Use ServerRequestEmailUpdateOutput instead. Will be removed')
class EmailUpdate with _$EmailUpdate {
  const factory EmailUpdate({
    @JsonKey(name: 'tokenRequired') required bool isTokenRequired,
  }) = _EmailUpdate;

  factory EmailUpdate.fromJson(Map<String, Object?> json) =>
      _$EmailUpdateFromJson(json);
}
