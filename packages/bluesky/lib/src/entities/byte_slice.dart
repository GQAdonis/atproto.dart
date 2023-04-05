// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'byte_slice.freezed.dart';
part 'byte_slice.g.dart';

@freezed
class ByteSlice with _$ByteSlice {
  const factory ByteSlice({
    required int byteStart,
    required int byteEnd,
  }) = _ByteSlice;

  factory ByteSlice.fromJson(Map<String, Object?> json) =>
      _$ByteSliceFromJson(json);
}
