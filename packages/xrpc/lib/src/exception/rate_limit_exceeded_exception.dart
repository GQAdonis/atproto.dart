// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'xrpc_exception.dart';

class RateLimitExceededException extends XRPCException {
  /// Returns the new instance of [RateLimitExceededException].
  const RateLimitExceededException(super.response)
      : super(label: 'RateLimitExceededException');
}
