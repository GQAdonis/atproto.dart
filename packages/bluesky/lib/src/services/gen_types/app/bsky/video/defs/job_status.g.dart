// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'job_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobStatusImpl _$$JobStatusImplFromJson(Map json) => $checkedCreate(
      r'_$JobStatusImpl',
      json,
      ($checkedConvert) {
        final val = _$JobStatusImpl(
          $type: $checkedConvert(
              r'$type', (v) => v as String? ?? appBskyVideoDefsJobStatus),
          jobId: $checkedConvert('jobId', (v) => v as String),
          did: $checkedConvert('did', (v) => v as String),
          state: $checkedConvert('state',
              (v) => const UJobStatusStateConverter().fromJson(v as String)),
          progress:
              $checkedConvert('progress', (v) => (v as num?)?.toInt() ?? 0),
          blob: $checkedConvert(
              'blob',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>, Blob>(
                  v, const BlobConverter().fromJson)),
          error: $checkedConvert('error', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          $unknown: $checkedConvert(
              r'$unknown',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$$JobStatusImplToJson(_$JobStatusImpl instance) {
  final val = <String, dynamic>{
    r'$type': instance.$type,
    'jobId': instance.jobId,
    'did': instance.did,
    'state': const UJobStatusStateConverter().toJson(instance.state),
    'progress': instance.progress,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'blob',
      _$JsonConverterToJson<Map<String, dynamic>, Blob>(
          instance.blob, const BlobConverter().toJson));
  writeNotNull('error', instance.error);
  writeNotNull('message', instance.message);
  writeNotNull(r'$unknown', instance.$unknown);
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
