// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'labeler_view_detailed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LabelerViewDetailedImpl _$$LabelerViewDetailedImplFromJson(Map json) =>
    $checkedCreate(
      r'_$LabelerViewDetailedImpl',
      json,
      ($checkedConvert) {
        final val = _$LabelerViewDetailedImpl(
          $type: $checkedConvert(r'$type',
              (v) => v as String? ?? appBskyLabelerDefsLabelerViewDetailed),
          uri: $checkedConvert(
              'uri', (v) => const AtUriConverter().fromJson(v as String)),
          cid: $checkedConvert('cid', (v) => v as String),
          creator: $checkedConvert(
              'creator',
              (v) => const ProfileViewConverter()
                  .fromJson(v as Map<String, dynamic>)),
          policies: $checkedConvert(
              'policies',
              (v) => const LabelerPoliciesConverter()
                  .fromJson(v as Map<String, dynamic>)),
          likeCount:
              $checkedConvert('likeCount', (v) => (v as num?)?.toInt() ?? 0),
          viewer: $checkedConvert(
              'viewer',
              (v) => v == null
                  ? const LabelerViewerState()
                  : const LabelerViewerStateConverter()
                      .fromJson(v as Map<String, dynamic>)),
          indexedAt:
              $checkedConvert('indexedAt', (v) => DateTime.parse(v as String)),
          labels: $checkedConvert(
              'labels',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => const LabelConverter()
                      .fromJson(e as Map<String, dynamic>))
                  .toList()),
          $unknown: $checkedConvert(
              r'$unknown',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LabelerViewDetailedImplToJson(
    _$LabelerViewDetailedImpl instance) {
  final val = <String, dynamic>{
    r'$type': instance.$type,
    'uri': const AtUriConverter().toJson(instance.uri),
    'cid': instance.cid,
    'creator': const ProfileViewConverter().toJson(instance.creator),
    'policies': const LabelerPoliciesConverter().toJson(instance.policies),
    'likeCount': instance.likeCount,
    'viewer': const LabelerViewerStateConverter().toJson(instance.viewer),
    'indexedAt': instance.indexedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'labels', instance.labels?.map(const LabelConverter().toJson).toList());
  writeNotNull(r'$unknown', instance.$unknown);
  return val;
}
