// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedGetListFeedOutputImpl _$$FeedGetListFeedOutputImplFromJson(Map json) =>
    $checkedCreate(
      r'_$FeedGetListFeedOutputImpl',
      json,
      ($checkedConvert) {
        final val = _$FeedGetListFeedOutputImpl(
          feed: $checkedConvert(
              'feed',
              (v) => (v as List<dynamic>)
                  .map((e) => FeedDefsFeedViewPost.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          cursor: $checkedConvert('cursor', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$FeedGetListFeedOutputImplToJson(
    _$FeedGetListFeedOutputImpl instance) {
  final val = <String, dynamic>{
    'feed': instance.feed.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  return val;
}
