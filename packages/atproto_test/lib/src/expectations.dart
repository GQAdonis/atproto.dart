// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;
import 'package:test/test.dart';

// 🌎 Project imports:
import 'mocks/values.dart';
import 'service_runner.dart';

const _mockValues = MockValues();

/// Checks if [fn] throws [core.HttpException].
void expectHttpException(Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(isA<core.HttpException>()),
  );
}

/// Checks if [fn] throws [core.UnauthorizedException].
void expectUnauthorizedException(final Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(isA<core.UnauthorizedException>()),
  );
}

/// Checks if [fn] throws [core.RateLimitExceededException].
void expectRateLimitExceededException(final Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(isA<core.RateLimitExceededException>()),
  );
}

/// Checks if [fn] throws [core.InternalServerErrorException].
void expectInternalServerErrorException(final Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(isA<core.InternalServerErrorException>()),
  );
}

void testService<S, D>(
  final ServiceRunner runner,
  final Future<core.XRPCResponse> Function(
    MockValues m,
    S s,
  ) endpoint,
  final String lexiconId,
  final String? label, [
  final List<int>? bytes,
]) {
  group(label == null ? lexiconId : '$lexiconId [$label]', () {
    test('success', () async {
      final actual = await endpoint.call(
        _mockValues,
        bytes != null
            ? runner.getServiceFromBytes<S>(bytes)
            : runner.getService<S>(lexiconId),
      );

      expect(actual, isA<core.XRPCResponse>());
      expect(actual.data, isA<D>());
    });

    test('unauthorized error', () {
      expectUnauthorizedException(
        () async => await endpoint.call(
          _mockValues,
          bytes != null
              ? runner.getServiceFromBytes<S>(bytes, statusCode: 401)
              : runner.getService<S>(lexiconId, statusCode: 401),
        ),
      );
    });

    test('rate limit exceeded error', () {
      expectRateLimitExceededException(
        () async => await endpoint.call(
          _mockValues,
          bytes != null
              ? runner.getServiceFromBytes<S>(bytes, statusCode: 429)
              : runner.getService<S>(lexiconId, statusCode: 429),
        ),
      );
    });

    test('internal server error', () {
      expectInternalServerErrorException(
        () async => await endpoint.call(
          _mockValues,
          bytes != null
              ? runner.getServiceFromBytes<S>(bytes, statusCode: 500)
              : runner.getService<S>(lexiconId, statusCode: 500),
        ),
      );
    });
  });
}
