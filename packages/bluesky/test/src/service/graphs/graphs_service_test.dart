// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:atproto/atproto.dart';
import 'package:bluesky/bluesky.dart';
// 📦 Package imports:
import 'package:test/test.dart';

import '../../../mocks/client_context_stubs.dart' as context;
import '../common_expectations.dart';

void main() {
  group('.createFollow', () {
    test('normal case', () async {
      final mockedContext = context.buildPostStub(
        'test',
        '/xrpc/com.atproto.repo.createRecord',
        'test/src/service/graphs/data/create_follow.json',
      );

      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
          context: mockedContext,
        ),
        service: 'test',
        context: mockedContext,
      );

      final response = await graphs.createFollow(
        did: 'test',
        declarationCid: '1234',
        createdAt: DateTime.now(),
      );

      expect(response, isA<ATProtoResponse>());
      expect(response.data, isA<Record>());
    });

    test('when unauthorized', () async {
      final mockedContext = context.buildPostStub(
        'test',
        '/xrpc/com.atproto.repo.createRecord',
        'test/src/service/graphs/data/create_follow.json',
        statusCode: 401,
      );

      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
          context: mockedContext,
        ),
        service: 'test',
        context: mockedContext,
      );

      expectUnauthorizedException(
        () async => await graphs.createFollow(
          did: 'test',
          declarationCid: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final mockedContext = context.buildPostStub(
        'test',
        '/xrpc/com.atproto.repo.createRecord',
        'test/src/service/graphs/data/create_follow.json',
        statusCode: 429,
      );

      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
          context: mockedContext,
        ),
        service: 'test',
        context: mockedContext,
      );

      expectRateLimitExceededException(
        () async => await graphs.createFollow(
          did: 'test',
          declarationCid: '1234',
        ),
      );
    });
  });

  group('.deleteFollow', () {
    test('normal case', () async {
      final mockedContext = context.buildPostStub(
        'test',
        '/xrpc/com.atproto.repo.deleteRecord',
        'test/src/service/graphs/data/delete_follow.json',
      );

      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
          context: mockedContext,
        ),
        service: 'test',
        context: mockedContext,
      );

      final response = await graphs.deleteFollow(
        uri: 'at://test',
      );

      expect(response, isA<ATProtoResponse>());
      expect(response.data, isA<Empty>());
    });

    test('when unauthorized', () async {
      final mockedContext = context.buildPostStub(
        'test',
        '/xrpc/com.atproto.repo.deleteRecord',
        'test/src/service/graphs/data/delete_follow.json',
        statusCode: 401,
      );

      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
          context: mockedContext,
        ),
        service: 'test',
        context: mockedContext,
      );

      expectUnauthorizedException(
        () async => await graphs.deleteFollow(
          uri: 'at://test',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final mockedContext = context.buildPostStub(
        'test',
        '/xrpc/com.atproto.repo.deleteRecord',
        'test/src/service/graphs/data/delete_follow.json',
        statusCode: 429,
      );

      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
          context: mockedContext,
        ),
        service: 'test',
        context: mockedContext,
      );

      expectRateLimitExceededException(
        () async => await graphs.deleteFollow(
          uri: 'at://test',
        ),
      );
    });
  });

  group('.findFollows', () {
    test('normal case', () async {
      final graphs = GraphsService(
        atproto: ATProto(did: 'test', accessJwt: 'test'),
        service: 'test',
        context: context.buildGetStub(
          'test',
          '/xrpc/app.bsky.graph.getFollows',
          'test/src/service/graphs/data/find_follows.json',
          {
            'user': 'shinyakato.dev',
            'limit': '10',
            'before': '1234',
          },
        ),
      );

      final response = await graphs.findFollows(
        actor: 'shinyakato.dev',
        limit: 10,
        cursor: '1234',
      );

      expect(response, isA<ATProtoResponse>());
      expect(response.data, isA<Follows>());
    });

    test('when unauthorized', () async {
      final graphs = GraphsService(
        atproto: ATProto(did: 'test', accessJwt: 'test'),
        service: 'test',
        context: context.buildGetStub(
          'test',
          '/xrpc/app.bsky.graph.getFollows',
          'test/src/service/graphs/data/find_follows.json',
          {
            'user': 'shinyakato.dev',
            'limit': '10',
            'before': '1234',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await graphs.findFollows(
          actor: 'shinyakato.dev',
          limit: 10,
          cursor: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final graphs = GraphsService(
        atproto: ATProto(did: 'test', accessJwt: 'test'),
        service: 'test',
        context: context.buildGetStub(
          'test',
          '/xrpc/app.bsky.graph.getFollows',
          'test/src/service/graphs/data/find_follows.json',
          {
            'user': 'shinyakato.dev',
            'limit': '10',
            'before': '1234',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await graphs.findFollows(
          actor: 'shinyakato.dev',
          limit: 10,
          cursor: '1234',
        ),
      );
    });
  });

  group('.findFollowers', () {
    test('normal case', () async {
      final graphs = GraphsService(
        atproto: ATProto(did: 'test', accessJwt: 'test'),
        service: 'test',
        context: context.buildGetStub(
          'test',
          '/xrpc/app.bsky.graph.getFollowers',
          'test/src/service/graphs/data/find_followers.json',
          {
            'user': 'shinyakato.dev',
            'limit': '10',
            'before': '1234',
          },
        ),
      );

      final response = await graphs.findFollowers(
        actor: 'shinyakato.dev',
        limit: 10,
        cursor: '1234',
      );

      expect(response, isA<ATProtoResponse>());
      expect(response.data, isA<Followers>());
    });

    test('when unauthorized', () async {
      final graphs = GraphsService(
        atproto: ATProto(did: 'test', accessJwt: 'test'),
        service: 'test',
        context: context.buildGetStub(
          'test',
          '/xrpc/app.bsky.graph.getFollowers',
          'test/src/service/graphs/data/find_followers.json',
          {
            'user': 'shinyakato.dev',
            'limit': '10',
            'before': '1234',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await graphs.findFollowers(
          actor: 'shinyakato.dev',
          limit: 10,
          cursor: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final graphs = GraphsService(
        atproto: ATProto(did: 'test', accessJwt: 'test'),
        service: 'test',
        context: context.buildGetStub(
          'test',
          '/xrpc/app.bsky.graph.getFollowers',
          'test/src/service/graphs/data/find_followers.json',
          {
            'user': 'shinyakato.dev',
            'limit': '10',
            'before': '1234',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await graphs.findFollowers(
          actor: 'shinyakato.dev',
          limit: 10,
          cursor: '1234',
        ),
      );
    });
  });

  group('.createMute', () {
    test('normal case', () async {
      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
        ),
        service: 'test',
        context: context.buildPostStub(
          'test',
          '/xrpc/app.bsky.graph.mute',
          'test/src/service/graphs/data/create_mute.json',
        ),
      );

      final response = await graphs.createMute(
        actor: 'shinyakato.dev',
      );

      expect(response, isA<ATProtoResponse>());
      expect(response.data, isA<Empty>());
    });

    test('when unauthorized', () async {
      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
        ),
        service: 'test',
        context: context.buildPostStub(
          'test',
          '/xrpc/app.bsky.graph.mute',
          'test/src/service/graphs/data/create_mute.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await graphs.createMute(
          actor: 'shinyakato.dev',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
        ),
        service: 'test',
        context: context.buildPostStub(
          'test',
          '/xrpc/app.bsky.graph.mute',
          'test/src/service/graphs/data/create_mute.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await graphs.createMute(
          actor: 'shinyakato.dev',
        ),
      );
    });
  });

  group('.deleteMute', () {
    test('normal case', () async {
      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
        ),
        service: 'test',
        context: context.buildPostStub(
          'test',
          '/xrpc/app.bsky.graph.unmute',
          'test/src/service/graphs/data/delete_mute.json',
        ),
      );

      final response = await graphs.deleteMute(
        actor: 'shinyakato.dev',
      );

      expect(response, isA<ATProtoResponse>());
      expect(response.data, isA<Empty>());
    });

    test('when unauthorized', () async {
      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
        ),
        service: 'test',
        context: context.buildPostStub(
          'test',
          '/xrpc/app.bsky.graph.unmute',
          'test/src/service/graphs/data/delete_mute.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await graphs.deleteMute(
          actor: 'shinyakato.dev',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final graphs = GraphsService(
        atproto: ATProto(
          did: 'test',
          accessJwt: 'test',
          service: 'test',
        ),
        service: 'test',
        context: context.buildPostStub(
          'test',
          '/xrpc/app.bsky.graph.unmute',
          'test/src/service/graphs/data/delete_mute.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await graphs.deleteMute(
          actor: 'shinyakato.dev',
        ),
      );
    });
  });
}
