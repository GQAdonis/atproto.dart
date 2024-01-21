// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../lex_annotations.g.dart' as lex;
import '../../feed/defs/generator_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/unspecced/getpopularfeedgenerators/#output
@freezed
@lex.appBskyUnspeccedGetPopularFeedGenerators
class UnspeccedGetPopularFeedGeneratorsOutput
    with _$UnspeccedGetPopularFeedGeneratorsOutput {
  @jsonSerializable
  const factory UnspeccedGetPopularFeedGeneratorsOutput({
    required List<FeedDefsGeneratorView> feeds,
    String? cursor,
  }) = _UnspeccedGetPopularFeedGeneratorsOutput;

  factory UnspeccedGetPopularFeedGeneratorsOutput.fromJson(
          Map<String, Object?> json) =>
      _$UnspeccedGetPopularFeedGeneratorsOutputFromJson(json);
}
