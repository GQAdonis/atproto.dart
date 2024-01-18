// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';
import 'package:atproto_test/atproto_test.dart' as atp_test;
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:bluesky/src/cardyb/link_preview.dart';
import 'package:bluesky/src/cardyb/link_preview_service.dart';

void main() {
  group('.findLinkPreview', () {
    test('success', () async {
      final response = await findLinkPreview(
        Uri.https('shinyakato.dev'),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/cardyb/data/find_link_preview.json',
        ),
      );

      expect(response, isA<Response>());
      expect(response.data, isA<LinkPreview>());
    });

    test('when error', () async {
      atp_test.expectHttpException(
        () async => await findLinkPreview(
          Uri.https('atprotodart.com'),
          mockedGetClient: atp_test.createMockedGetClient(
            'test/src/cardyb/data/find_link_preview_error.json',
            statusCode: 401,
          ),
        ),
      );
    });
  });
}
