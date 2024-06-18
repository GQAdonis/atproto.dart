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
import '../../../../../../ids.g.dart';
import '../../../../app/bsky/actor/defs/profile_associated_chat.dart';

part 'profile_associated.freezed.dart';
part 'profile_associated.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/defs#profileassociated
@freezed
class ProfileAssociated with _$ProfileAssociated {
  @JsonSerializable(includeIfNull: false)
  const factory ProfileAssociated({
    /// The unique namespace for this lex object.
    ///
    /// `app.bsky.actor.defs#profileAssociated`
    @Default(appBskyActorDefsProfileAssociated)
    @JsonKey(name: r'$type')
    String $type,
    @Default(0) int lists,
    @Default(0) int feedgens,
    @Default(false) bool labeler,
    @ProfileAssociatedChatConverter() ProfileAssociatedChat? chat,

    /// Contains unknown objects not defined in Lexicon.
    @JsonKey(name: r'$unknown') Map<String, dynamic>? $unknown,
  }) = _ProfileAssociated;

  factory ProfileAssociated.fromJson(Map<String, dynamic> json) =>
      _$ProfileAssociatedFromJson(json);
}

/// Returns true if [object] is [ProfileAssociated], otherwise false.
bool isProfileAssociated(final Map<String, dynamic>? object) {
  if (object == null) return false;
  if (object[r'$type'] == null) return false;

  return object[r'$type'] == 'app.bsky.actor.defs#profileAssociated';
}

extension $ProfileAssociatedExtension on ProfileAssociated {
  /// Returns true if this object has unknown objects,
  /// otherwise false.
  bool get hasUnknown => $unknown != null && $unknown!.isNotEmpty;

  /// Returns true if this object has not unknown objects,
  /// otherwise false.
  bool get hasNotUnknown => !hasUnknown;
}

const _kLexCompatibleProperties = <String>[
  r'$type',
  'lists',
  'feedgens',
  'labeler',
  'chat',
];

final class ProfileAssociatedConverter
    implements JsonConverter<ProfileAssociated, Map<String, dynamic>> {
  const ProfileAssociatedConverter();

  @override
  ProfileAssociated fromJson(Map<String, dynamic> json) {
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

    return ProfileAssociated.fromJson(props);
  }

  @override
  Map<String, dynamic> toJson(ProfileAssociated object) {
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
