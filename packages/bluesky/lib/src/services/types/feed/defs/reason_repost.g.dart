// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'reason_repost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReasonRepostImpl _$$ReasonRepostImplFromJson(Map json) => $checkedCreate(
      r'_$ReasonRepostImpl',
      json,
      ($checkedConvert) {
        final val = _$ReasonRepostImpl(
          by: $checkedConvert(
              'by',
              (v) => ProfileViewBasic.fromJson(
                  Map<String, Object?>.from(v as Map))),
          indexedAt:
              $checkedConvert('indexedAt', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ReasonRepostImplToJson(_$ReasonRepostImpl instance) =>
    <String, dynamic>{
      'by': instance.by.toJson(),
      'indexedAt': instance.indexedAt.toIso8601String(),
    };
