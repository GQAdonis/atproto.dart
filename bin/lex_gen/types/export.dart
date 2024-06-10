// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:lexicon/lexicon.dart';

// 🌎 Project imports:
import '../rules/utils.dart';

final class Export {
  const Export({
    required this.docId,
    required this.defName,
    required this.objectName,
    required this.filePath,
  });

  final NSID docId;
  final String defName;
  final String objectName;

  final String filePath;

  @override
  String toString() {
    final packageName = getPackageName(docId.toString());
    final path = filePath.split('/').map(toLowerCamelCase).join('/');

    return "export 'package:$packageName/$kTypesPath/$path';";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Export &&
          runtimeType == other.runtimeType &&
          docId == other.docId &&
          defName == other.defName &&
          objectName == other.objectName &&
          filePath == other.filePath;

  @override
  int get hashCode =>
      docId.hashCode ^
      defName.hashCode ^
      objectName.hashCode ^
      filePath.hashCode;
}
