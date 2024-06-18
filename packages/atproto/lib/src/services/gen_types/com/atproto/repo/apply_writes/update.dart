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
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../../../ids.g.dart';

part 'update.freezed.dart';
part 'update.g.dart';

/// Operation which updates an existing record.
///
/// https://atprotodart.com/docs/lexicons/com/atproto/repo/applyWrites#update
@freezed
class Update with _$Update {
  @JsonSerializable(includeIfNull: false)
  const factory Update({
    /// The unique namespace for this lex object.
    ///
    /// `com.atproto.repo.applyWrites#update`
    @Default(comAtprotoRepoApplyWritesUpdate)
    @JsonKey(name: r'$type')
    String $type,
    @NSIDConverter() required NSID collection,
    required String rkey,
    required Map<String, dynamic> value,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _Update;

  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);
}

/// Returns true if [object] is [Update], otherwise false.
bool isUpdate(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'com.atproto.repo.applyWrites#update';
}

extension $UpdateExtension on Update {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'collection',
  'rkey',
  'value',
];

final class UpdateConverter
    implements JsonConverter<Update, Map<String, dynamic>> {
  const UpdateConverter();

  @override
  Update fromJson(Map<String, dynamic> json) {
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

    return Update.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(Update object) {
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
