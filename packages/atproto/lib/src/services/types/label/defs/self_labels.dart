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
import 'self_label.dart';

part 'self_labels.freezed.dart';
part 'self_labels.g.dart';

/// Metadata tags on an atproto record, published by the author within the record.
///
/// https://atprotodart.com/docs/lexicons/com/atproto/label/defs#selflabels
@freezed
class SelfLabels with _$SelfLabels {
  @JsonSerializable(includeIfNull: false)
  const factory SelfLabels({
    /// The unique namespace for this lex object.
    ///
    /// `com.atproto.label.defs#selfLabels`
    @Default(comAtprotoLabelDefsSelfLabels)
    @JsonKey(name: r'$type')
    String $type,
    required List<SelfLabel> values,
  }) = _SelfLabels;

  factory SelfLabels.fromJson(Map<String, Object?> json) =>
      _$SelfLabelsFromJson(json);
}
