// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'mod_event_unmute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModEventUnmuteImpl _$$ModEventUnmuteImplFromJson(Map json) => $checkedCreate(
      r'_$ModEventUnmuteImpl',
      json,
      ($checkedConvert) {
        final val = _$ModEventUnmuteImpl(
          $type: $checkedConvert(r'$type',
              (v) => v as String? ?? toolsOzoneModerationDefsModEventUnmute),
          comment: $checkedConvert('comment', (v) => v as String?),
          $unknown: $checkedConvert(
              r'$unknown',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ModEventUnmuteImplToJson(
    _$ModEventUnmuteImpl instance) {
  final val = <String, dynamic>{
    r'$type': instance.$type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment);
  writeNotNull(r'$unknown', instance.$unknown);
  return val;
}
