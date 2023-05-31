// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:convert';
import 'dart:typed_data';

Cbor decodeCbor(List<int> data, [int offset = 0]) =>
    _decodeCborRecursively(data, offset);

class Cbor {
  const Cbor(
    this.value,
    this.bytesRead,
  );

  final dynamic value;
  final int bytesRead;
}

Cbor _decodeCborRecursively(List<int> data, int offset) {
  final int initialByte = data[offset];
  final int majorType = initialByte >> 5;
  final int additionalInfo = initialByte & 0x1F;
  int value;
  int bytesRead = 1;

  if (additionalInfo < 24) {
    value = additionalInfo;
  } else if (additionalInfo == 24) {
    value = data[offset + bytesRead];
    bytesRead += 1;
  } else if (additionalInfo == 25) {
    value = (data[offset + bytesRead] << 8) | data[offset + bytesRead + 1];
    bytesRead += 2;
  } else if (additionalInfo == 26) {
    value = (data[offset + bytesRead] << 24) |
        (data[offset + bytesRead + 1] << 16) |
        (data[offset + bytesRead + 2] << 8) |
        data[offset + bytesRead + 3];
    bytesRead += 4;
  } else {
    throw UnsupportedError(
      'Unsupported additional information: $additionalInfo',
    );
  }

  if (majorType == 0) {
    // Unsigned integer
    return Cbor(value, bytesRead);
  } else if (majorType == 1) {
    // Negative integer
    return Cbor(-1 - value, bytesRead);
  } else if (majorType == 2) {
    // Byte string
    final List<int> byteString =
        data.sublist(offset + bytesRead, offset + bytesRead + value);
    bytesRead += value;
    return Cbor(byteString, bytesRead);
  } else if (majorType == 3) {
    final String utf8String = utf8
        .decode(data.sublist(offset + bytesRead, offset + bytesRead + value));
    bytesRead += value;
    return Cbor(utf8String, bytesRead);
  } else if (majorType == 4) {
    // Array
    List<dynamic> array = [];
    for (int i = 0; i < value; ++i) {
      final result = _decodeCborRecursively(data, offset + bytesRead);
      array.add(result.value);
      bytesRead += result.bytesRead;
    }
    return Cbor(array, bytesRead);
  } else if (majorType == 5) {
    // Map
    Map<dynamic, dynamic> map = {};
    for (int i = 0; i < value; ++i) {
      final keyResult = _decodeCborRecursively(data, offset + bytesRead);
      bytesRead += keyResult.bytesRead;
      final valueResult = _decodeCborRecursively(data, offset + bytesRead);
      bytesRead += valueResult.bytesRead;
      map[keyResult.value] = valueResult.value;
    }
    return Cbor(map, bytesRead);
  } else if (majorType == 6) {
    // Tagged data
    // You can handle specific tags here or just ignore the tag and decode the
    // following data
    final dataResult = _decodeCborRecursively(data, offset + bytesRead);
    bytesRead += dataResult.bytesRead;
    return Cbor(dataResult.value, bytesRead);
  } else if (majorType == 7) {
    // Simple data types, floats and special values
    if (additionalInfo == 20) {
      // Boolean false
      return Cbor(false, bytesRead);
    } else if (additionalInfo == 21) {
      // Boolean true
      return Cbor(true, bytesRead);
    } else if (additionalInfo < 32) {
      // Simple data types
      return Cbor(value, bytesRead);
    } else if (additionalInfo == 44) {
      // Float16 (half-precision float)
      // Not natively supported in Dart; you can use a library or implement
      // conversion yourself
      throw UnsupportedError('Float16 not supported');
    } else if (additionalInfo == 45) {
      // Float32 (single-precision float)
      final floatBytes =
          data.sublist(offset + bytesRead, offset + bytesRead + 4);
      bytesRead += 4;
      final floatValue = ByteData.sublistView(Uint8List.fromList(floatBytes))
          .getFloat32(0, Endian.little);
      return Cbor(floatValue, bytesRead);
    } else if (additionalInfo == 46) {
      // Float64 (double-precision float)
      final doubleBytes =
          data.sublist(offset + bytesRead, offset + bytesRead + 8);
      bytesRead += 8;
      final doubleValue = ByteData.sublistView(Uint8List.fromList(doubleBytes))
          .getFloat64(0, Endian.little);
      return Cbor(doubleValue, bytesRead);
    } else if (additionalInfo == 47) {
      // Float128 (quad-precision float)
      // Not natively supported in Dart; you can use a library or implement
      // conversion yourself
      throw UnsupportedError('Float128 not supported');
    } else if (additionalInfo == 31) {
      // Break marker
      return Cbor(value, bytesRead);
    } else {
      // Other special values
      return Cbor(value, bytesRead);
    }
  } else {
    throw UnsupportedError('Unsupported major type: $majorType');
  }
}
