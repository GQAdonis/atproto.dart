// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImagesImageImpl _$$ImagesImageImplFromJson(Map json) => $checkedCreate(
      r'_$ImagesImageImpl',
      json,
      ($checkedConvert) {
        final val = _$ImagesImageImpl(
          $type: $checkedConvert(
              r'$type', (v) => v as String? ?? appBskyEmbedImagesImage),
          image: $checkedConvert('image',
              (v) => const BlobConverter().fromJson(v as Map<String, dynamic>)),
          alt: $checkedConvert('alt', (v) => v as String),
          aspectRatio: $checkedConvert(
              'aspectRatio',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>,
                      ImagesAspectRatio>(
                  v, const ImagesAspectRatioConverter().fromJson)),
          $unknown: $checkedConvert(
              r'$unknown',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ImagesImageImplToJson(_$ImagesImageImpl instance) {
  final val = <String, dynamic>{
    r'$type': instance.$type,
    'image': const BlobConverter().toJson(instance.image),
    'alt': instance.alt,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'aspectRatio',
      _$JsonConverterToJson<Map<String, dynamic>, ImagesAspectRatio>(
          instance.aspectRatio, const ImagesAspectRatioConverter().toJson));
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
