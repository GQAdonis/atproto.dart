// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../utils.dart';
import 'data_type.dart';
import 'known_values.dart';

const _kCorePackage = "import 'package:atproto_core/atproto_core.dart';";
const _kFreezedAnnotationPackage =
    "import 'package:freezed_annotation/freezed_annotation.dart';";

final class LexGenObject {
  const LexGenObject({
    this.description,
    required this.name,
    required this.fileName,
    required this.properties,
    required this.filePath,
  });

  final String? description;
  final String name;
  final String fileName;
  final List<LexGenObjectProperty> properties;

  final String filePath;

  @override
  String toString() {
    assert(properties.isNotEmpty);

    // Distinct
    final importPaths = properties
        .map((e) => e.type.importPath)
        .where((e) => e != null)
        .toSet()
        .toList();

    final buffer = StringBuffer();
    buffer.writeln(getFileHeader('Lex Object Generator'));
    buffer.writeln();
    buffer.writeln(_kCorePackage);
    buffer.writeln(_kFreezedAnnotationPackage);
    for (final importPath in importPaths) {
      buffer
        ..writeln()
        ..write("import '$importPath';");
    }
    buffer.writeln();
    buffer.writeln("part '$fileName.freezed.dart';");
    buffer.writeln("part '$fileName.g.dart';");
    buffer.writeln();
    if (description != null && description!.isNotEmpty) {
      buffer.writeln('// $description');
    }
    buffer.writeln('@freezed');
    buffer.writeln('class $name with _\$$name {');
    buffer.writeln('  @jsonSerializable');
    buffer.write('  const factory $name({');
    buffer.writeln();
    for (final property in properties) {
      buffer
        ..writeln()
        ..write(property.toString());
    }
    buffer.writeln();
    buffer.writeln('  }) = _$name;');
    buffer.writeln();
    buffer.writeln('  factory $name.fromJson(Map<String, Object?> json) =>');
    buffer.writeln('      _\$${name}FromJson(json);');
    buffer.writeln('}');

    return buffer.toString();
  }
}

final class LexGenObjectProperty {
  const LexGenObjectProperty({
    this.description,
    this.isRequired = false,
    required this.type,
    required this.name,
    this.knownValues,
    this.defaultValue,
  });

  final String? description;
  final bool isRequired;
  final DataType type;
  final String name;

  final LexGenKnownValues? knownValues;
  final String? defaultValue;

  @override
  String toString() {
    final buffer = StringBuffer();

    if (description != null && description!.isNotEmpty) {
      buffer.write('    '); // Comments will not be formatted
      buffer.writeln('/// $description');
    }

    if (type.converter != null) {
      buffer.write('@${type.converter}()');
      buffer.write(' ');
    }

    if (isRequired) {
      buffer.write('required');
      buffer.write(' ');
      buffer.write(type.name);
      buffer.write(' ');
    } else {
      if (defaultValue != null) {
        buffer.write('@Default($defaultValue) ${type.name}');
        buffer.write(' ');
      } else {
        buffer.write('${type.name}?');
        buffer.write(' ');
      }
    }

    buffer.write('$name,');

    return buffer.toString();
  }
}
