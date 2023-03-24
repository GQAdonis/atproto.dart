// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:atproto/atproto.dart';
import 'package:atproto_core/atproto_core.dart' as core;

import 'actors/actors_service.dart';
import 'feeds/feeds_service.dart';
import 'graphs/graphs_service.dart';
import 'notifications/notifications_service.dart';
import 'unspecced/unspecced_service.dart';

abstract class BlueskyService {
  /// Returns the new instance of [BlueskyService].
  factory BlueskyService({
    required ATProto atproto,
    required String service,
    required core.ClientContext context,
  }) =>
      _BlueskyService(
        atproto: atproto,
        service: service,
        context: context,
      );

  /// Returns the actors service.
  ActorsService get actors;

  /// Returns the feeds service.
  FeedsService get feeds;

  /// Returns the notifications service.
  NotificationsService get notifications;

  /// Returns the graphs service.
  GraphsService get graphs;

  /// Returns the unspecced service.
  UnspeccedService get unspecced;
}

class _BlueskyService implements BlueskyService {
  /// Returns the new instance of [_BlueskyService].
  _BlueskyService({
    required ATProto atproto,
    required String service,
    required core.ClientContext context,
  })  : actors = ActorsService(
          atproto: atproto,
          service: service,
          context: context,
        ),
        feeds = FeedsService(
          atproto: atproto,
          service: service,
          context: context,
        ),
        notifications = NotificationsService(
          atproto: atproto,
          service: service,
          context: context,
        ),
        graphs = GraphsService(
          atproto: atproto,
          service: service,
          context: context,
        ),
        unspecced = UnspeccedService(
          atproto: atproto,
          service: service,
          context: context,
        );

  @override
  final ActorsService actors;

  @override
  final FeedsService feeds;

  @override
  final NotificationsService notifications;

  @override
  final GraphsService graphs;

  @override
  final UnspeccedService unspecced;
}
