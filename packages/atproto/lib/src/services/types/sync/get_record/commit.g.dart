// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SyncGetRecordCommitImpl _$$SyncGetRecordCommitImplFromJson(Map json) =>
    $checkedCreate(
      r'_$SyncGetRecordCommitImpl',
      json,
      ($checkedConvert) {
        final val = _$SyncGetRecordCommitImpl(
          cid: $checkedConvert('cid', (v) => v as String),
          commit: $checkedConvert(
              'commit', (v) => Map<String, dynamic>.from(v as Map)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SyncGetRecordCommitImplToJson(
        _$SyncGetRecordCommitImpl instance) =>
    <String, dynamic>{
      'cid': instance.cid,
      'commit': instance.commit,
    };
