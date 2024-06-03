// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:lexicon/lexicon.dart';

// 🌎 Project imports:
import '../rules/naming_convention.dart';
import '../rules/utils.dart';
import '../types/context.dart';
import '../types/data_type.dart';
import '../types/object.dart';

final class LexGenObjectBuilder {
  const LexGenObjectBuilder(this.context);

  final LexGenContext context;

  LexGenObject? build() {
    final properties = _getProperties();
    if (properties.isEmpty) return null; // RefVariant, no need to create.

    final convention = LexNamingConvention(context);

    return LexGenObject(
        description: getReferencePath(context),
        name: convention.getObjectName(),
        fileName: convention.getFileName(),
        properties: properties,
        filePath: convention.getFilePath());
  }

  List<LexGenObjectProperty> _getProperties() {
    final properties = context.def!.whenOrNull(
      object: (data) => _getObjectProperties(data),
      xrpcQuery: (data) {
        final object = data.output?.schema?.whenOrNull(object: (data) => data);
        if (object == null) return const <LexGenObjectProperty>[]; // RefVariant

        if (object.properties?.length == 1) {
          final refVariant = object.properties?.values.first
              .whenOrNull(refVariant: (data) => data);
          final ref = refVariant?.whenOrNull(ref: (data) => data);

          if (ref != null && ref.ref != null) {
            // final refObject = getRef(docId, ref.ref!);
            return const <LexGenObjectProperty>[]; //! Ignore ref now.
          }
        }

        return _getObjectProperties(object);
      },
    );

    return properties ?? const [];
  }

  List<LexGenObjectProperty> _getObjectProperties(final LexObject object) {
    if (object.properties == null) return const [];

    final properties = <LexGenObjectProperty>[];

    final requiredProperties = object.requiredProperties ?? const [];

    for (final entry in object.properties!.entries) {
      final property = entry.value.toJson();
      final dataType = getDataType(
        context,
        type: property['type'],
        format: property['format'],
        ref: property['ref'],
        items: property['items'],
      );

      properties.add(
        LexGenObjectProperty(
          description: property['description'],
          isRequired: requiredProperties.contains(entry.key),
          type: dataType,
          name: entry.key,
          defaultValue: _getDefaultValue(
            property['default'],
            dataType,
            property['ref'],
          ),
        ),
      );
    }

    return properties;
  }

  String? _getDefaultValue(
    final dynamic defaultValue,
    final DataType type,
    final String? ref,
  ) {
    if (type.name == 'int') {
      return defaultValue != null ? defaultValue.toString() : '0';
    } else if (type.name == 'bool') {
      return defaultValue != null ? defaultValue.toString() : 'false';
    } else if (type.name.startsWith('List<')) {
      return '[]';
    } else if (type.name.startsWith('Map<')) {
      return '{}';
    }

    if (ref != null) {
      final requiredProperties = getRef(context.docId, ref)!.whenOrNull(
        object: (data) => data.requiredProperties ?? const [],
      );

      if (requiredProperties == null || requiredProperties.isEmpty) {
        // There is no required properties.
        return '${type.name}()';
      }
    }

    return null;
  }
}
