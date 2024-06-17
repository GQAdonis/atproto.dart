// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;

Map<String, dynamic> getBlocksAdaptor(final dynamic data) {
  final blocks = <Map<String, dynamic>>[];
  core.decodeCar(data).forEach((cid, value) {
    final record = core.cbor.decode(value) as Map;

    blocks.add({
      'cid': cid.toString(),
      'value': core.CID.fromList(record['data']).toString()
    });
  });

  return {
    'blocks': blocks,
  };
}
