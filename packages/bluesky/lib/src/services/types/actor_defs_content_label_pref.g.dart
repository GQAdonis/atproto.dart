// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'actor_defs_content_label_pref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActorDefsContentLabelPrefImpl _$$ActorDefsContentLabelPrefImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$ActorDefsContentLabelPrefImpl',
      json,
      ($checkedConvert) {
        final val = _$ActorDefsContentLabelPrefImpl(
          type: $checkedConvert(r'$type',
              (v) => v as String? ?? appBskyActorDefsContentLabelPref),
          label: $checkedConvert('label', (v) => v as String),
          visibility: $checkedConvert('visibility',
              (v) => $enumDecode(_$ContentLabelVisibilityEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'type': r'$type'},
    );

Map<String, dynamic> _$$ActorDefsContentLabelPrefImplToJson(
        _$ActorDefsContentLabelPrefImpl instance) =>
    <String, dynamic>{
      r'$type': instance.type,
      'label': instance.label,
      'visibility': _$ContentLabelVisibilityEnumMap[instance.visibility]!,
    };

const _$ContentLabelVisibilityEnumMap = {
  ContentLabelVisibility.ignore: 'ignore',
  ContentLabelVisibility.warn: 'warn',
  ContentLabelVisibility.hide: 'hide',
};
