// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RevokeAppPasswordInputImpl _$$RevokeAppPasswordInputImplFromJson(Map json) =>
    $checkedCreate(
      r'_$RevokeAppPasswordInputImpl',
      json,
      ($checkedConvert) {
        final val = _$RevokeAppPasswordInputImpl(
          name: $checkedConvert('name', (v) => v as String),
          $unknown: $checkedConvert(
              r'$unknown',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RevokeAppPasswordInputImplToJson(
    _$RevokeAppPasswordInputImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(r'$unknown', instance.$unknown);
  return val;
}
