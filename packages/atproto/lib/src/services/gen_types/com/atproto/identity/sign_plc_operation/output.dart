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

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/identity/signPlcOperation#main
@freezed
class SignPlcOperationOutput with _$SignPlcOperationOutput {
  @JsonSerializable(includeIfNull: false)
  const factory SignPlcOperationOutput({
    /// A signed DID PLC operation.
    required Map<String, dynamic> operation,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _SignPlcOperationOutput;

  factory SignPlcOperationOutput.fromJson(Map<String, dynamic> json) =>
      _$SignPlcOperationOutputFromJson(json);
}

extension $SignPlcOperationOutputExtension on SignPlcOperationOutput {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'operation',
];

final class SignPlcOperationOutputConverter
    implements JsonConverter<SignPlcOperationOutput, Map<String, dynamic>> {
  const SignPlcOperationOutputConverter();

  @override
  SignPlcOperationOutput fromJson(Map<String, dynamic> json) {
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

    return SignPlcOperationOutput.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(SignPlcOperationOutput object) {
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
