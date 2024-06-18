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
import '../../../../app/bsky/feed/describe_feed_generator/feed.dart';
import '../../../../app/bsky/feed/describe_feed_generator/links.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/feed/describeFeedGenerator#main
@freezed
class DescribeFeedGeneratorOutput with _$DescribeFeedGeneratorOutput {
  @JsonSerializable(includeIfNull: false)
  const factory DescribeFeedGeneratorOutput({
    required String did,
    @FeedConverter() required List<Feed> feeds,
    @LinksConverter() Links? links,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _DescribeFeedGeneratorOutput;

  factory DescribeFeedGeneratorOutput.fromJson(Map<String, dynamic> json) =>
      _$DescribeFeedGeneratorOutputFromJson(json);
}

extension $DescribeFeedGeneratorOutputExtension on DescribeFeedGeneratorOutput {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  'did',
  'feeds',
  'links',
];

final class DescribeFeedGeneratorOutputConverter
    implements
        JsonConverter<DescribeFeedGeneratorOutput, Map<String, dynamic>> {
  const DescribeFeedGeneratorOutputConverter();

  @override
  DescribeFeedGeneratorOutput fromJson(Map<String, dynamic> json) {
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

    return DescribeFeedGeneratorOutput.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(DescribeFeedGeneratorOutput object) {
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
