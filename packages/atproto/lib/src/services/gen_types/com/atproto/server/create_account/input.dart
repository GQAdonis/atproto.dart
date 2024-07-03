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

part 'input.freezed.dart';
part 'input.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/server/createAccount#main
@freezed
class CreateAccountInput with _$CreateAccountInput {
  @JsonSerializable(includeIfNull: false)
  const factory CreateAccountInput({
    String? email,

    /// Requested handle for the account.
    required String handle,

    /// Pre-existing atproto DID, being imported to a new account.
    String? did,
    String? inviteCode,
    String? verificationCode,
    String? verificationPhone,

    /// Initial account password. May need to meet instance-specific password strength requirements.
    String? password,

    /// DID PLC rotation key (aka, recovery key) to be included in PLC creation operation.
    String? recoveryKey,

    /// A signed DID PLC operation to be submitted as part of importing an existing account to this instance. NOTE: this optional field may be updated when full account migration is implemented.
    Map<String, dynamic>? plcOp,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _CreateAccountInput;

  factory CreateAccountInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountInputFromJson(json);
}

extension $CreateAccountInputExtension on CreateAccountInput {
  /// Returns true if [email] is not null, otherwise false.
  bool get hasEmail => email != null;

  /// Returns true if [email] is null, otherwise false.
  bool get hasNotEmail => !hasEmail;

  /// Returns true if [did] is not null, otherwise false.
  bool get hasDid => did != null;

  /// Returns true if [did] is null, otherwise false.
  bool get hasNotDid => !hasDid;

  /// Returns true if [inviteCode] is not null, otherwise false.
  bool get hasInviteCode => inviteCode != null;

  /// Returns true if [inviteCode] is null, otherwise false.
  bool get hasNotInviteCode => !hasInviteCode;

  /// Returns true if [verificationCode] is not null, otherwise false.
  bool get hasVerificationCode => verificationCode != null;

  /// Returns true if [verificationCode] is null, otherwise false.
  bool get hasNotVerificationCode => !hasVerificationCode;

  /// Returns true if [verificationPhone] is not null, otherwise false.
  bool get hasVerificationPhone => verificationPhone != null;

  /// Returns true if [verificationPhone] is null, otherwise false.
  bool get hasNotVerificationPhone => !hasVerificationPhone;

  /// Returns true if [password] is not null, otherwise false.
  bool get hasPassword => password != null;

  /// Returns true if [password] is null, otherwise false.
  bool get hasNotPassword => !hasPassword;

  /// Returns true if [recoveryKey] is not null, otherwise false.
  bool get hasRecoveryKey => recoveryKey != null;

  /// Returns true if [recoveryKey] is null, otherwise false.
  bool get hasNotRecoveryKey => !hasRecoveryKey;

  /// Returns true if [plcOp] is not null, otherwise false.
  bool get hasPlcOp => plcOp != null;

  /// Returns true if [plcOp] is null, otherwise false.
  bool get hasNotPlcOp => !hasPlcOp;

  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'email',
  'handle',
  'did',
  'inviteCode',
  'verificationCode',
  'verificationPhone',
  'password',
  'recoveryKey',
  'plcOp',
];

final class CreateAccountInputConverter
    implements JsonConverter<CreateAccountInput, Map<String, dynamic>> {
  const CreateAccountInputConverter();

  @override
  CreateAccountInput fromJson(Map<String, dynamic> json) {
    final props = <String, dynamic>{};
    for (final key in json.keys) {
      if (_kLexCompatibleProperties.contains(key)) {
        props[key] = json[key];
      } else {
        if (props.containsKey(r'$unknown')) {
          props[r'$unknown'][key] = json[key];
        } else {
          props[r'$unknown'] = <String, dynamic>{};
          props[r'$unknown'][key] = json[key];
        }
      }
    }

    return CreateAccountInput.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(CreateAccountInput object) {
    if (object.hasNotUnknown) {
      return object.toJson();
    }

    final json = object.toJson();

    final props = <String, dynamic>{};
    for (final key in json.keys) {
      if (key == r'$unknown') continue;
      props[key] = json[key];
    }

    return <String, dynamic>{
      ...props,
      ...json[r'$unknown'],
    };
  }
}
