// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:universal_io/io.dart';
import 'package:xrpc/xrpc.dart' as xrpc;

// 🌎 Project imports:
import 'client.dart';
import 'retry_policy.dart';

final class Challenge {
  /// Returns the new instance of [Challenge].
  const Challenge(this._retryPolicy);

  /// The policy of retry.
  final RetryPolicy _retryPolicy;

  dynamic execute(
    final dynamic Function(XrpcClient client) action, {
    int retryCount = 0,
  }) async {
    try {
      return await action.call(xrpcClient);
    } on SocketException {
      if (_retryPolicy.shouldRetry(retryCount)) {
        return await _retry(xrpcClient, action, retryCount: ++retryCount);
      }

      rethrow;
    } on TimeoutException {
      if (_retryPolicy.shouldRetry(retryCount)) {
        return await _retry(xrpcClient, action, retryCount: ++retryCount);
      }

      rethrow;
    } on xrpc.InternalServerErrorException {
      if (_retryPolicy.shouldRetry(retryCount)) {
        return await _retry(xrpcClient, action, retryCount: ++retryCount);
      }

      rethrow;
    }
  }

  dynamic _retry(
    final XrpcClient client,
    final dynamic Function(XrpcClient client) action, {
    int retryCount = 0,
  }) async {
    await _retryPolicy.wait(retryCount);

    return await execute(
      action,
      retryCount: retryCount,
    );
  }
}
