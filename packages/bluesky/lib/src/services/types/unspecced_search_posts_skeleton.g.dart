// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'unspecced_search_posts_skeleton.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnspeccedSearchPostsSkeletonImpl _$$UnspeccedSearchPostsSkeletonImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$UnspeccedSearchPostsSkeletonImpl',
      json,
      ($checkedConvert) {
        final val = _$UnspeccedSearchPostsSkeletonImpl(
          posts: $checkedConvert(
              'posts',
              (v) => (v as List<dynamic>)
                  .map((e) => UnspeccedDefsSkeletonSearchPost.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          hitsTotal: $checkedConvert('hitsTotal', (v) => v as int? ?? 0),
          cursor: $checkedConvert('cursor', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UnspeccedSearchPostsSkeletonImplToJson(
        _$UnspeccedSearchPostsSkeletonImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts.map((e) => e.toJson()).toList(),
      'hitsTotal': instance.hitsTotal,
      'cursor': instance.cursor,
    };
