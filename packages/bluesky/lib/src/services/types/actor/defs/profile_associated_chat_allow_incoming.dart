// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// coverage:ignore-file
// ignore_for_file: type=lint
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Lex Object Generator
// **************************************************************************

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_associated_chat_allow_incoming.freezed.dart';

enum KnownProfileAssociatedChatAllowIncoming {
  @JsonValue('all')
  all('all'),
  @JsonValue('none')
  none('none'),
  @JsonValue('following')
  following('following'),
  ;

  final String value;

  const KnownProfileAssociatedChatAllowIncoming(this.value);

  static KnownProfileAssociatedChatAllowIncoming? valueOf(final String value) {
    for (final $value in values) {
      if ($value.value == value) {
        return $value;
      }
    }

    return null;
  }
}

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
/// This union object can be used as follows.
///
/// ```dart
/// // use when syntax.
/// final value = object.when(
///   knownValue: (data) => data, // => KnownProfileAssociatedChatAllowIncoming
///   unknownValue: (data) => data, // => String
/// );
///
/// // or simpler way.
/// if (object.isKnownValue) {
///   print(object.knownValue); // => KnownProfileAssociatedChatAllowIncoming or null
/// } else if (object.isUnknownValue) {
///   print(object.unknownValue); // => String or null
/// }
/// ```
@freezed
class ProfileAssociatedChatAllowIncoming
    with _$ProfileAssociatedChatAllowIncoming {
  const factory ProfileAssociatedChatAllowIncoming.knownValue({
    required KnownProfileAssociatedChatAllowIncoming data,
  }) = UProfileAssociatedChatAllowIncomingKnownValue;

  const factory ProfileAssociatedChatAllowIncoming.unknownValue({
    required String data,
  }) = UProfileAssociatedChatAllowIncomingUnknownValue;
}

final class ProfileAssociatedChatAllowIncomingConverter
    implements JsonConverter<ProfileAssociatedChatAllowIncoming, String> {
  const ProfileAssociatedChatAllowIncomingConverter();

  @override
  ProfileAssociatedChatAllowIncoming fromJson(String json) {
    final knownValue = KnownProfileAssociatedChatAllowIncoming.valueOf(json);

    return knownValue != null
        ? ProfileAssociatedChatAllowIncoming.knownValue(data: knownValue)
        : ProfileAssociatedChatAllowIncoming.unknownValue(data: json);
  }

  @override
  String toJson(ProfileAssociatedChatAllowIncoming object) => object.when(
        knownValue: (data) => data.value,
        unknownValue: (data) => data,
      );
}

extension ProfileAssociatedChatAllowIncomingExtension
    on ProfileAssociatedChatAllowIncoming {
  /// Returns true if this is known value, otherwise false.
  bool get isKnownValue =>
      this is UProfileAssociatedChatAllowIncomingKnownValue;

  /// Returns true if this is unknown value, otherwise false.
  bool get isUnknownValue =>
      this is UProfileAssociatedChatAllowIncomingUnknownValue;

  /// Returns known value if this data is known, otherwise null.
  KnownProfileAssociatedChatAllowIncoming? get knownValue => isKnownValue
      ? this.data as KnownProfileAssociatedChatAllowIncoming
      : null;

  /// Returns unknown value if this data is unknown, otherwise null.
  String? get unknownValue => isUnknownValue ? this.data as String : null;
}
