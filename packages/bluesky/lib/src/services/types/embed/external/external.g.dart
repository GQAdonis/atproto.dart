// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'external.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExternalExternalImpl _$$ExternalExternalImplFromJson(Map json) =>
    $checkedCreate(
      r'_$ExternalExternalImpl',
      json,
      ($checkedConvert) {
        final val = _$ExternalExternalImpl(
          uri: $checkedConvert('uri', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          thumb: $checkedConvert(
              'thumb',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>, Blob>(
                  v, const BlobConverter().fromJson)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ExternalExternalImplToJson(
    _$ExternalExternalImpl instance) {
  final val = <String, dynamic>{
    'uri': instance.uri,
    'title': instance.title,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'thumb',
      _$JsonConverterToJson<Map<String, dynamic>, Blob>(
          instance.thumb, const BlobConverter().toJson));
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
