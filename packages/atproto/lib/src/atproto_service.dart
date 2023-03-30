// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:atproto_core/atproto_core.dart' as core;

import 'identities/identities_service.dart';
import 'moderation/moderation_service.dart';
import 'repositories/repositories_service.dart';
import 'sessions/sessions_service.dart';

abstract class ATProtoService {
  /// Returns the new instance of [ATProtoService].
  factory ATProtoService({
    required String did,
    required String service,
    required core.ClientContext context,
    final core.GetClient? mockedGetClient,
    final core.PostClient? mockedPostClient,
  }) =>
      _ATProtoService(
        did: did,
        service: service,
        context: context,
        mockedGetClient: mockedGetClient,
        mockedPostClient: mockedPostClient,
      );

  /// Returns the sessions service.
  SessionsService get sessions;

  /// Returns the new instance of identities service.
  IdentitiesService get identities;

  /// Returns the repositories service.
  RepositoriesService get repositories;

  /// Returns the moderation service.
  ModerationService get moderation;
}

class _ATProtoService implements ATProtoService {
  /// Returns the new instance of [_ATProtoService].
  _ATProtoService({
    required String did,
    required String service,
    required core.ClientContext context,
    final core.GetClient? mockedGetClient,
    final core.PostClient? mockedPostClient,
  })  : sessions = SessionsService(
          did: did,
          service: service,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
        identities = IdentitiesService(
          did: did,
          service: service,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
        repositories = RepositoriesService(
          did: did,
          service: service,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
        moderation = ModerationService(
          did: did,
          service: service,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        );

  @override
  final SessionsService sessions;

  @override
  final IdentitiesService identities;

  @override
  final RepositoriesService repositories;

  @override
  final ModerationService moderation;
}
