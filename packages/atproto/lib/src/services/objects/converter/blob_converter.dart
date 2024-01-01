// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../adaptor/blob_adaptor.dart';
import '../blob.dart';

const blobConverter = _BlobConverter();

final class _BlobConverter
    implements JsonConverter<Blob, Map<String, dynamic>> {
  const _BlobConverter();

  @override
  Blob fromJson(Map<String, dynamic> json) =>
      Blob.fromJson(toCompatibleBlob(json));

  @override
  Map<String, dynamic> toJson(Blob object) => object.toJson();
}
