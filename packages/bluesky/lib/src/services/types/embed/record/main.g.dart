// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmbedRecordImpl _$$EmbedRecordImplFromJson(Map json) => $checkedCreate(
      r'_$EmbedRecordImpl',
      json,
      ($checkedConvert) {
        final val = _$EmbedRecordImpl(
          type: $checkedConvert(
              r'$type', (v) => v as String? ?? appBskyEmbedRecord),
          record: $checkedConvert('record',
              (v) => StrongRef.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'type': r'$type'},
    );

Map<String, dynamic> _$$EmbedRecordImplToJson(_$EmbedRecordImpl instance) =>
    <String, dynamic>{
      r'$type': instance.type,
      'record': instance.record.toJson(),
    };
