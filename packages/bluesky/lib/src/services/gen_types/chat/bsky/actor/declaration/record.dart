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

// 🌎 Project imports:
import '../../../../chat/bsky/actor/declaration/known_declaration_allow_incoming.dart';

part 'record.freezed.dart';
part 'record.g.dart';

/// https://atprotodart.com/docs/lexicons/chat/bsky/actor/declaration#main
@freezed
class DeclarationRecord with _$DeclarationRecord {
  @JsonSerializable(includeIfNull: false)
  const factory DeclarationRecord({
    @UDeclarationAllowIncomingConverter()
    required UDeclarationAllowIncoming allowIncoming,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _DeclarationRecord;

  factory DeclarationRecord.fromJson(Map<String, dynamic> json) =>
      _$DeclarationRecordFromJson(json);
}

extension $DeclarationRecordExtension on DeclarationRecord {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'allowIncoming',
];

final class DeclarationRecordConverter
    implements JsonConverter<DeclarationRecord, Map<String, dynamic>> {
  const DeclarationRecordConverter();

  @override
  DeclarationRecord fromJson(Map<String, dynamic> json) {
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

    return DeclarationRecord.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(DeclarationRecord object) {
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
