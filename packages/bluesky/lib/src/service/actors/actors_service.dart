// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:atproto/atproto.dart' as atp;
import 'package:atproto_core/atproto_core.dart' as core;

import '../bluesky_base_service.dart';
import '../entities/actor_profile.dart';
import '../entities/actor_profiles_data.dart';
import '../entities/actor_typeahead_data.dart';
import '../entities/actors_data.dart';
import '../entities/users_data.dart';

abstract class ActorsService {
  /// Returns the new instance of [ActorsService].
  factory ActorsService({
    required atp.ATProto atproto,
    required String service,
    required core.ClientContext context,
  }) =>
      _ActorsService(
        atproto: atproto,
        service: service,
        context: context,
      );

  /// Find UsersData matching search criteria.
  ///
  /// ## Parameters
  ///
  /// - [term]: Search criteria.
  ///
  /// - [limit]: Maximum number of search results. From 1 to 100.
  ///            The default is 50.
  ///
  /// - [cursor]: Cursor string returned from the last search.
  ///
  /// ## Lexicon
  ///
  /// - app.bsky.actor.search
  ///
  /// ## Reference
  ///
  /// - https://github.com/bluesky-social/atproto/blob/main/lexicons/app/bsky/actor/search.json
  Future<core.ATProtoResponse<UsersData>> searchActors({
    required String term,
    int? limit,
    String? cursor,
  });

  /// Find a specific user profile based on handle or DID.
  ///
  /// ## Parameters
  ///
  /// - [actor]: The user handle or DID you want to get.
  ///
  /// ## Lexicon
  ///
  /// - app.bsky.actor.getProfile
  ///
  /// ## Reference
  ///
  /// - https://github.com/bluesky-social/atproto/blob/main/lexicons/app/bsky/actor/getProfile.json
  Future<core.ATProtoResponse<ActorProfile>> findProfile({
    required String actor,
  });

  /// Find user profiles based on handles or DIDs.
  ///
  /// ## Parameters
  ///
  /// - [actors]: The list contained user handles or DID you want to get.
  ///
  /// ## Lexicon
  ///
  /// - app.bsky.actor.getProfiles
  ///
  /// ## Reference
  ///
  /// - https://github.com/bluesky-social/atproto/blob/main/lexicons/app/bsky/actor/getProfiles.json
  Future<core.ATProtoResponse<ActorProfilesData>> findProfiles({
    required List<String> actors,
  });

  /// Get a list of actors suggested for following. Used in discovery UIs.
  ///
  /// ## Parameters
  ///
  /// - [limit]: Maximum number of search results. From 1 to 100.
  ///            The default is 50.
  ///
  /// - [cursor]: Cursor string returned from the last search.
  ///
  /// ## Lexicon
  ///
  /// - app.bsky.actor.getSuggestions
  ///
  /// ## Reference
  ///
  /// - https://github.com/bluesky-social/atproto/blob/main/lexicons/app/bsky/actor/getSuggestions.json
  Future<core.ATProtoResponse<ActorsData>> findSuggestions({
    int? limit,
    String? cursor,
  });

  Future<core.ATProtoResponse<ActorTypeaheadData>> searchActorTypeahead({
    required String term,
    int? limit,
  });
}

class _ActorsService extends BlueskyBaseService implements ActorsService {
  /// Returns the new instance of [_ActorsService].
  _ActorsService({
    required super.atproto,
    required super.service,
    required super.context,
  });

  @override
  Future<core.ATProtoResponse<UsersData>> searchActors({
    required String term,
    int? limit,
    String? cursor,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          '/xrpc/app.bsky.actor.search',
          queryParameters: {
            'term': term,
            'limit': limit,
            'before': cursor,
          },
        ),
        dataBuilder: UsersData.fromJson,
      );

  @override
  Future<core.ATProtoResponse<ActorProfile>> findProfile({
    required String actor,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          '/xrpc/app.bsky.actor.getProfile',
          queryParameters: {
            'actor': actor,
          },
        ),
        dataBuilder: ActorProfile.fromJson,
      );

  @override
  Future<core.ATProtoResponse<ActorProfilesData>> findProfiles({
    required List<String> actors,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          '/xrpc/app.bsky.actor.getProfiles',
          queryParameters: {
            'actors': actors,
          },
        ),
        dataBuilder: ActorProfilesData.fromJson,
      );

  @override
  Future<atp.ATProtoResponse<ActorsData>> findSuggestions({
    int? limit,
    String? cursor,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          '/xrpc/app.bsky.actor.getSuggestions',
          queryParameters: {
            'limit': limit,
            'cursor': cursor,
          },
        ),
        dataBuilder: ActorsData.fromJson,
      );

  @override
  Future<atp.ATProtoResponse<ActorTypeaheadData>> searchActorTypeahead({
    required String term,
    int? limit,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          '/xrpc/app.bsky.actor.searchTypeahead',
          queryParameters: {
            'term': term,
            'limit': limit,
          },
        ),
        dataBuilder: ActorTypeaheadData.fromJson,
      );
}
