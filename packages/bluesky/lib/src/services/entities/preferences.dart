// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'converter/preference_converter.dart';
import 'preference.dart';

part 'preferences.freezed.dart';
part 'preferences.g.dart';

/// https://atprotodart.com/docs/lexicons/app/bsky/actor/getpreferences/#output
@freezed
@Deprecated('Use Preferences')
class Preferences with _$Preferences {
  const factory Preferences({
    @preferenceConverter required List<Preference> preferences,
  }) = _Preferences;

  factory Preferences.fromJson(Map<String, Object?> json) =>
      _$PreferencesFromJson(json);
}
