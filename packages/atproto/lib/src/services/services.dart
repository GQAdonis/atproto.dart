// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;

// 🌎 Project imports:
import 'identity_service.dart';
import 'label_service.dart';
import 'moderation_service.dart';
import 'repo_service.dart';
import 'server_service.dart';
import 'sync_service.dart';

sealed class ATProtoService {
  /// Returns the new instance of [ATProtoService].
  factory ATProtoService({
    required String did,
    required core.Protocol protocol,
    required String service,
    required String relayService,
    required core.ClientContext context,
    final core.GetClient? mockedGetClient,
    final core.PostClient? mockedPostClient,
  }) =>
      _ATProtoService(
        did: did,
        protocol: protocol,
        service: service,
        relayService: relayService,
        context: context,
        mockedGetClient: mockedGetClient,
        mockedPostClient: mockedPostClient,
      );

  /// Returns the servers service.
  /// This service represents `com.atproto.server.*`.
  ServerService get servers;

  /// Returns the new identity service.
  /// This service represents `com.atproto.identity.*`.
  IdentityService get identities;

  /// Returns the repositories service.
  /// This service represents `com.atproto.repo.*`.
  RepoService get repositories;

  /// Returns the moderation service.
  /// This service represents `com.atproto.moderation.*`.
  ModerationService get moderation;

  /// Returns the sync service.
  /// This service represents `com.atproto.sync.*`.
  SyncService get sync;

  /// Returns the label service.
  /// This service represents `com.atproto.label.*`.
  LabelService get labels;
}

final class _ATProtoService implements ATProtoService {
  /// Returns the new instance of [_ATProtoService].
  _ATProtoService({
    required String did,
    required core.Protocol protocol,
    required String service,
    required String relayService,
    required core.ClientContext context,
    final core.GetClient? mockedGetClient,
    final core.PostClient? mockedPostClient,
  })  : servers = ServerService(
          did: did,
          protocol: protocol,
          service: service,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
        identities = IdentityService(
          did: did,
          protocol: protocol,
          service: service,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
        repositories = RepoService(
          did: did,
          protocol: protocol,
          service: service,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
        moderation = ModerationService(
          did: did,
          protocol: protocol,
          service: service,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
        sync = SyncService(
          did: did,
          protocol: protocol,
          service: service,
          relayService: relayService,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        ),
        labels = LabelService(
          did: did,
          protocol: protocol,
          service: service,
          relayService: relayService,
          context: context,
          mockedGetClient: mockedGetClient,
          mockedPostClient: mockedPostClient,
        );

  @override
  final ServerService servers;

  @override
  final IdentityService identities;

  @override
  final RepoService repositories;

  @override
  final ModerationService moderation;

  @override
  final SyncService sync;

  @override
  final LabelService labels;
}
