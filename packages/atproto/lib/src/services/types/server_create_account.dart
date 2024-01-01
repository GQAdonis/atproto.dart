// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../lex_annotations.g.dart' as lex;

part 'server_create_account.freezed.dart';
part 'server_create_account.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/server/createaccount/#output
@freezed
@lex.comAtprotoServerCreateAccount
class ServerCreateAccount with _$ServerCreateAccount {
  const factory ServerCreateAccount({
    required String accessJwt,
    required String refreshJwt,
    required String handle,
    required String did,
    Map<String, dynamic>? didDoc,
  }) = _ServerCreateAccount;

  factory ServerCreateAccount.fromJson(Map<String, Object?> json) =>
      _$ServerCreateAccountFromJson(json);
}
