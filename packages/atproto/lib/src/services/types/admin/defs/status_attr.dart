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
import '../../../../ids.g.dart';

part 'status_attr.freezed.dart';
part 'status_attr.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/admin/defs#statusattr
@freezed
class StatusAttr with _$StatusAttr {
  @JsonSerializable(includeIfNull: false)
  const factory StatusAttr({
    /// The unique namespace for this lex object.
    ///
    /// `com.atproto.admin.defs#statusAttr`
    @Default(comAtprotoAdminDefsStatusAttr)
    @JsonKey(name: r'$type')
    String $type,
    required bool applied,
    String? ref,

    /// Contains unknown objects not defined in Lexicon.
    @Default({}) @JsonKey(name: r'$unknown') Map<String, dynamic> $unknown,
  }) = _StatusAttr;

  factory StatusAttr.fromJson(Map<String, Object?> json) =>
      _$StatusAttrFromJson(json);
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'applied',
  'ref',
];

final class StatusAttrConverter
    implements JsonConverter<Map<String, dynamic>, Map<String, dynamic>> {
  const StatusAttrConverter();

  @override
  Map<String, dynamic> fromJson(Map<String, dynamic> json) {
    if (_kLexCompatibleProperties.length == json.length) {
      return json;
    }

    final lexCompatiblePropertiesWithUnknown = <String, dynamic>{
      r'$unknown': <String, dynamic>{}
    };
    for (final key in json.keys) {
      if (_kLexCompatibleProperties.contains(key)) {
        lexCompatiblePropertiesWithUnknown[key] = json[key];
      } else {
        lexCompatiblePropertiesWithUnknown[r'$unknown'][key] = json[key];
      }
    }

    return lexCompatiblePropertiesWithUnknown;
  }

  @override
  Map<String, dynamic> toJson(Map<String, dynamic> object) {
    if (object[r'$unknown']?.isEmpty ?? true) {
      return object;
    }

    final lexCompatibleProperties = <String, dynamic>{};
    for (final key in object.keys) {
      if (_kLexCompatibleProperties.contains(key)) {
        lexCompatibleProperties[key] = object[key];
      }
    }

    return <String, dynamic>{
      ...lexCompatibleProperties,
      ...object[r'$unknown'],
    };
  }
}
