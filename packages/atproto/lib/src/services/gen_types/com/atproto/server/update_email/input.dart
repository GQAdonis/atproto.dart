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

/// https://atprotodart.com/docs/lexicons/com/atproto/server/updateEmail#main
@freezed
class UpdateEmailInput with _$UpdateEmailInput {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateEmailInput({
    required String email,
    bool? emailAuthFactor,

    /// Requires a token from com.atproto.sever.requestEmailUpdate if the account's email has been confirmed.
    String? token,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _UpdateEmailInput;

  factory UpdateEmailInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmailInputFromJson(json);
}

extension $UpdateEmailInputExtension on UpdateEmailInput {
  /// Returns true or false from [emailAuthFactor].
  bool get isEmailAuthFactor => emailAuthFactor ?? false;

  /// Returns negated true or false from [emailAuthFactor].
  bool get isNotEmailAuthFactor => !isEmailAuthFactor;

  /// Returns true if [token] is not null, otherwise false.
  bool get hasToken => token != null;

  /// Returns true if [token] is null, otherwise false.
  bool get hasNotToken => !hasToken;

  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'email',
  'emailAuthFactor',
  'token',
];

final class UpdateEmailInputConverter
    implements JsonConverter<UpdateEmailInput, Map<String, dynamic>> {
  const UpdateEmailInputConverter();

  @override
  UpdateEmailInput fromJson(Map<String, dynamic> json) {
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

    return UpdateEmailInput.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(UpdateEmailInput object) {
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
