// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchStarterPacksOutputImpl _$$SearchStarterPacksOutputImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$SearchStarterPacksOutputImpl',
      json,
      ($checkedConvert) {
        final val = _$SearchStarterPacksOutputImpl(
          cursor: $checkedConvert('cursor', (v) => v as String?),
          starterPacks: $checkedConvert(
              'starterPacks',
              (v) => (v as List<dynamic>)
                  .map((e) => StarterPackViewBasic.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SearchStarterPacksOutputImplToJson(
        _$SearchStarterPacksOutputImpl instance) =>
    <String, dynamic>{
      if (instance.cursor case final value?) 'cursor': value,
      'starterPacks': instance.starterPacks.map((e) => e.toJson()).toList(),
    };
