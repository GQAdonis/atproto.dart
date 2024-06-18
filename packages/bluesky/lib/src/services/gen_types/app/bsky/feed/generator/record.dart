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
import '../../../../app/bsky/feed/generator/union_generator_label.dart';
import '../../../../app/bsky/richtext/facet/main.dart';

part 'record.freezed.dart';
part 'record.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/generator#main
@freezed
class GeneratorRecord with _$GeneratorRecord {
  @JsonSerializable(includeIfNull: false)
  const factory GeneratorRecord({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.feed.generator`
    @Default(appBskyFeedGenerator) @JsonKey(name: r'$type') String $type,
    required String did,
    required String displayName,
    String? description,
    @FacetConverter() List<Facet>? descriptionFacets,
    @BlobConverter() Blob? avatar,

    /// Declaration that a feed accepts feedback interactions from a client through app.bsky.feed.sendInteractions
    @Default(false) bool acceptsInteractions,

    /// Self-label values
    @UGeneratorLabelConverter() UGeneratorLabel? labels,
    DateTime? createdAt,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _GeneratorRecord;

  factory GeneratorRecord.fromJson(Map<String, dynamic> json) =>
      _$GeneratorRecordFromJson(json);
}

/// Returns true if [object] is [GeneratorRecord], otherwise false.
bool isGeneratorRecord(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.feed.generator#main' ||
      object[r'$type'] == 'app.bsky.feed.generator';
}

extension $GeneratorRecordExtension on GeneratorRecord {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'did',
  'displayName',
  'description',
  'descriptionFacets',
  'avatar',
  'acceptsInteractions',
  'labels',
  'createdAt',
];

final class GeneratorRecordConverter
    implements JsonConverter<GeneratorRecord, Map<String, dynamic>> {
  const GeneratorRecordConverter();

  @override
  GeneratorRecord fromJson(Map<String, dynamic> json) {
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

    return GeneratorRecord.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(GeneratorRecord object) {
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
