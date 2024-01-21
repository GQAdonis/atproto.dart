// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;

// 🌎 Project imports:
import '../nsids.g.dart' as ns;
import 'types/identity/resolve_handle/_z.dart';

/// Represents `com.atproto.identity.*` service.
final class IdentityService {
  IdentityService(this._ctx);

  final core.ServiceContext _ctx;

  /// https://atprotodart.com/docs/lexicons/com/atproto/identity/resolveHandle
  Future<core.XRPCResponse<IdentityResolveHandleOutput>> resolveHandle({
    required String handle,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findDID(handle: handle);

  @Deprecated('Use .resolveHandle instead. Will be removed')
  Future<core.XRPCResponse<IdentityResolveHandleOutput>> findDID({
    required String handle,
  }) async =>
      await _findDID(
        handle: handle,
        to: IdentityResolveHandleOutput.fromJson,
      );

  Future<core.XRPCResponse<core.EmptyData>> updateHandle({
    required String handle,
  }) async =>
      await _ctx.post(
        ns.comAtprotoIdentityUpdateHandle,
        body: {
          'handle': handle,
        },
      );

  Future<core.XRPCResponse<T>> _findDID<T>({
    required String handle,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.comAtprotoIdentityResolveHandle,
        parameters: {
          'handle': handle,
        },
        to: to,
      );
}
