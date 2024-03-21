// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../lex_annotations.g.dart' as lex;

part 'label_value_definition_strings.freezed.dart';
part 'label_value_definition_strings.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/label/defs/#labelvaluedefinitionstrings
@freezed
@lex.comAtprotoLabelDefsLabelValueDefinition
class LabelValueDefinitionStrings with _$LabelValueDefinitionStrings {
  @jsonSerializable
  const factory LabelValueDefinitionStrings({
    required String lang,
    required String name,
    required String description,
  }) = _LabelValueDefinitionStrings;

  factory LabelValueDefinitionStrings.fromJson(Map<String, Object?> json) =>
      _$LabelValueDefinitionStringsFromJson(json);
}
