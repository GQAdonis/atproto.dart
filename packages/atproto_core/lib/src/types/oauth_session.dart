// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_oauth/atproto_oauth.dart';

// 🌎 Project imports:
import '../utils/jwt.dart';
import '../utils/jwt_decoder.dart';

extension OauthSessionExtension on OAuthSession {
  /// Returns decoded [accessToken].
  Jwt get accessTokenJwt => decodeJwt(accessToken);

  /// Returns PDS endpoint like `porcini.us-east.host.bsky.network` dynamically
  /// based on this [OAuthSession].
  String? get atprotoPdsEndpoint {
    try {
      return accessTokenJwt.atprotoPdsEndpoint;
    } catch (_) {
      return null;
    }
  }
}
