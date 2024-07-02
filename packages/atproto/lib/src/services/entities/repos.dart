// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../gen_types/com/atproto/sync/list_repos/repo.dart';

part 'repos.freezed.dart';
part 'repos.g.dart';

/// https://atprotodart.com/docs/lexicons/com/atproto/sync/listrepos/#output
@freezed
@Deprecated('Use ListReposOutput')
class Repos with _$Repos {
  const factory Repos({
    required List<Repo> repos,
    String? cursor,
  }) = _Repos;

  factory Repos.fromJson(Map<String, Object?> json) => _$ReposFromJson(json);
}
