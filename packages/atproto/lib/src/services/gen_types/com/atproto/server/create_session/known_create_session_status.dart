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

part 'known_create_session_status.freezed.dart';

/// ## Overview
///
/// The object representing `knownValues` defined in Lexicon as an Enum.
///
/// Although the `knownValues` defined in Lexicon are not technically Enums,
/// it is very useful to be able to treat these fields as type safe Enums.
///
/// ## Usage
///
/// ### Get JSON compatible value
///
/// ```dart
/// // JSON compatible value.
/// final value = KnownCreateSessionStatus.something.value;
/// ```
///
/// ### Convert to [UCreateSessionStatus]
///
/// ```dart
/// final union = KnownCreateSessionStatus.something.toUnion();
/// ```
enum KnownCreateSessionStatus {
  @JsonValue('takendown')
  takendown('takendown'),
  @JsonValue('suspended')
  suspended('suspended'),
  @JsonValue('deactivated')
  deactivated('deactivated'),
  ;

  /// JSON value based on lexicon.
  final String value;

  const KnownCreateSessionStatus(this.value);

  /// Returns [KnownCreateSessionStatus] associated with [value], otherwise null.
  static KnownCreateSessionStatus? valueOf(final String? value) {
    if (value == null) return null;

    for (final $value in values) {
      if ($value.value == value) {
        return $value;
      }
    }

    return null;
  }
}

extension $KnownCreateSessionStatusExtension on KnownCreateSessionStatus {
  /// Returns this value as [UCreateSessionStatus].
  UCreateSessionStatus toUnion() => UCreateSessionStatus.knownValue(data: this);

  /// Returns true if this value is [takendown], otherwise false.
  bool get isTakendown => this == KnownCreateSessionStatus.takendown;

  /// Returns true if this value is not [takendown], otherwise false.
  bool get isNotTakendown => !isTakendown;

  /// Returns true if this value is [suspended], otherwise false.
  bool get isSuspended => this == KnownCreateSessionStatus.suspended;

  /// Returns true if this value is not [suspended], otherwise false.
  bool get isNotSuspended => !isSuspended;

  /// Returns true if this value is [deactivated], otherwise false.
  bool get isDeactivated => this == KnownCreateSessionStatus.deactivated;

  /// Returns true if this value is not [deactivated], otherwise false.
  bool get isNotDeactivated => !isDeactivated;
}

/// ## Overview
///
/// This is an union object to improve safety and convenience of objects
/// using Enum.
///
/// Enum provides a very powerful type for a specific group of data,
/// but at the same time it means a loss of flexibility: values not defined
/// in Enum are either completely ignored or an exception is thrown
/// if parsing fails. This union object exists to solve that problem.
///
/// This union object handles the `KnownValue`, a known enum value defined in Lexicon,
/// and the `UnknownValue`, an unknown string value not defined in Lexicon. In other words,
/// it can handle unknown values while enjoying the type safety of Enum.
///
/// ## Usage
///
/// ```dart
/// // use when syntax.
/// final value = object.when(
///   knownValue: (data) => data, // => KnownCreateSessionStatus
///   unknownValue: (data) => data, // => String
/// );
///
/// // or simpler way.
/// if (object.isKnownValue) {
///   print(object.knownValue); // => KnownCreateSessionStatus or null
/// } else if (object.isUnknownValue) {
///   print(object.unknownValue); // => String or null
/// }
/// ```
@freezed
class UCreateSessionStatus with _$UCreateSessionStatus {
  const factory UCreateSessionStatus.knownValue({
    required KnownCreateSessionStatus data,
  }) = UCreateSessionStatusKnownValue;

  const factory UCreateSessionStatus.unknownValue({
    required String data,
  }) = UCreateSessionStatusUnknownValue;
}

final class UCreateSessionStatusConverter
    implements JsonConverter<UCreateSessionStatus, String> {
  const UCreateSessionStatusConverter();

  @override
  UCreateSessionStatus fromJson(String json) {
    final knownValue = KnownCreateSessionStatus.valueOf(json);

    return knownValue != null
        ? UCreateSessionStatus.knownValue(data: knownValue)
        : UCreateSessionStatus.unknownValue(data: json);
  }

  @override
  String toJson(UCreateSessionStatus object) => object.when(
        knownValue: (data) => data.value,
        unknownValue: (data) => data,
      );
}

extension $UCreateSessionStatusExtension on UCreateSessionStatus {
  /// Returns string value.
  String toJson() => const UCreateSessionStatusConverter().toJson(this);

  /// Returns true if this is known value, otherwise false.
  bool get isKnownValue => this is UCreateSessionStatusKnownValue;

  /// Returns true if this is not known value, otherwise false.
  bool get isNotKnownValue => !isKnownValue;

  /// Returns true if this is unknown value, otherwise false.
  bool get isUnknownValue => this is UCreateSessionStatusUnknownValue;

  /// Returns true if this is not unknown value, otherwise false.
  bool get isNotUnknownValue => !isUnknownValue;

  /// Returns known value.
  ///
  /// Make sure to check if this object is known value with [isKnownValue].
  KnownCreateSessionStatus get knownValue =>
      this.data as KnownCreateSessionStatus;

  /// Returns known value if this data is known, otherwise null.
  KnownCreateSessionStatus? get knownValueOrNull =>
      isKnownValue ? knownValue : null;

  /// Returns unknown value.
  ///
  /// Make sure to check if this object is unknown value with [isUnknownValue].
  String get unknownValue => this.data as String;

  /// Returns unknown value if this data is unknown, otherwise null.
  String? get unknownValueOrNull => isUnknownValue ? unknownValue : null;
}
