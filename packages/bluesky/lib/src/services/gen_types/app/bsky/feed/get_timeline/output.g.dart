// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTimelineOutputImpl _$$GetTimelineOutputImplFromJson(Map json) =>
    $checkedCreate(
      r'_$GetTimelineOutputImpl',
      json,
      ($checkedConvert) {
        final val = _$GetTimelineOutputImpl(
          cursor: $checkedConvert('cursor', (v) => v as String?),
          feed: $checkedConvert(
              'feed',
              (v) => (v as List<dynamic>)
                  .map((e) => const FeedViewPostConverter()
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

Map<String, dynamic> _$$GetTimelineOutputImplToJson(
    _$GetTimelineOutputImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  val['feed'] =
      instance.feed.map(const FeedViewPostConverter().toJson).toList();
  writeNotNull(r'$unknown', instance.$unknown);
  return val;
}
