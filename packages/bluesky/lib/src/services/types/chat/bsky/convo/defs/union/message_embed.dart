// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../../../../../ids.g.dart';
import '../../../../../../entities/converter/embed_view_record_view_converter.dart';
import '../../../../../../entities/embed_view_record_view.dart';

part 'message_embed.freezed.dart';

@freezed
class UConvoMessageEmbed with _$UConvoMessageEmbed {
  // ignore: unused_element
  const UConvoMessageEmbed._();

  const factory UConvoMessageEmbed.recordView({
    required EmbedViewRecordView data,
  }) = UConvoMessageEmbedViewRecordView;

  const factory UConvoMessageEmbed.unknown({
    required Map<String, dynamic> data,
  }) = UConvoMessageEmbedUnknown;

  Map<String, dynamic> toJson() => unionConvoMessageEmbedConverter.toJson(this);
}

const unionConvoMessageEmbedConverter = _UConvoMessageEmbedConverter();

final class _UConvoMessageEmbedConverter
    implements JsonConverter<UConvoMessageEmbed, Map<String, dynamic>> {
  const _UConvoMessageEmbedConverter();

  @override
  UConvoMessageEmbed fromJson(Map<String, dynamic> json) {
    try {
      final type = json[core.objectType];

      if (type == appBskyEmbedRecord) {
        return UConvoMessageEmbed.recordView(
          data: embedViewRecordViewConverter.fromJson(json),
        );
      }

      return UConvoMessageEmbed.unknown(data: json);
    } catch (_) {
      return UConvoMessageEmbed.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UConvoMessageEmbed object) => object.when(
        recordView: (data) => embedViewRecordViewConverter.toJson(data),
        unknown: (data) => data,
      );
}
