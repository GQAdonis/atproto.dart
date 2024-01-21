// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto/atproto.dart' as atp;
import 'package:atproto_core/atproto_core.dart' as core;

// 🌎 Project imports:
import '../ids.g.dart' as ids;
import '../nsids.g.dart' as ns;
import 'service_context.dart';
import 'types/feed/describe_feed_generator/_z.dart';
import 'types/feed/generator/_z.dart';
import 'types/feed/get_actor_feeds/_z.dart';
import 'types/feed/get_actor_likes/_z.dart';
import 'types/feed/get_author_feed/_z.dart';
import 'types/feed/get_feed/_z.dart';
import 'types/feed/get_feed_generator/_z.dart';
import 'types/feed/get_feed_generators/_z.dart';
import 'types/feed/get_feed_skeleton/_z.dart';
import 'types/feed/get_likes/_z.dart';
import 'types/feed/get_list_feed/_z.dart';
import 'types/feed/get_post_thread/_z.dart';
import 'types/feed/get_posts/_z.dart';
import 'types/feed/get_reposted_by/_z.dart';
import 'types/feed/get_suggested_feeds/_z.dart';
import 'types/feed/get_timeline/_z.dart';
import 'types/feed/like/_z.dart';
import 'types/feed/post/_z.dart';
import 'types/feed/repost/_z.dart';
import 'types/feed/search_posts/_z.dart';
import 'types/feed/threadgate/_z.dart';
import 'types/richtext/facet/_z.dart';

/// Represents `app.bsky.feed.*` service.
final class FeedService {
  FeedService(this._ctx);

  final BlueskyServiceContext _ctx;

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/post
  Future<core.XRPCResponse<atp.RepoStrongRef>> post({
    required String text,
    FeedPostReplyRef? reply,
    List<RichtextFacet>? facets,
    UFeedPostRecordEmbed? embed,
    List<String>? languageTags,
    atp.Labels? labels,
    List<String>? tags,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await createPost(
        text: text,
        reply: reply,
        facets: facets,
        embed: embed,
        languageTags: languageTags,
        labels: labels,
        tags: tags,
        createdAt: createdAt,
        unspecced: unspecced,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/repost
  Future<core.XRPCResponse<atp.RepoStrongRef>> repost({
    required String cid,
    required core.AtUri uri,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await createRepost(
        cid: cid,
        uri: uri,
        createdAt: createdAt,
        unspecced: unspecced,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getTimeline
  Future<core.XRPCResponse<FeedGetTimelineOutput>> getTimeline({
    String? algorithm,
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findTimeline(
        algorithm: algorithm,
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/like
  Future<core.XRPCResponse<atp.RepoStrongRef>> like({
    required String cid,
    required core.AtUri uri,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await createLike(
        cid: cid,
        uri: uri,
        createdAt: createdAt,
        unspecced: unspecced,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getAuthorFeed
  Future<core.XRPCResponse<FeedGetAuthorFeedOutput>> getAuthorFeed({
    required String actor,
    int? limit,
    String? cursor,
    FeedGetAuthorFeedInputFilter? filter,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findFeed(
        actor: actor,
        limit: limit,
        cursor: cursor,
        filter: filter,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getFeed
  Future<core.XRPCResponse<FeedGetFeedOutput>> getFeed({
    required core.AtUri generatorUri,
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findCustomFeed(
        generatorUri: generatorUri,
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getFeedSkeleton
  Future<core.XRPCResponse<FeedGetFeedSkeletonOutput>> getFeedSkeleton({
    required core.AtUri generatorUri,
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findFeedSkeleton(
        generatorUri: generatorUri,
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getActorFeeds
  Future<core.XRPCResponse<FeedGetActorFeedsOutput>> getActorFeeds({
    required String actor,
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findActorFeeds(
        actor: actor,
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getLikes
  Future<core.XRPCResponse<FeedGetLikesOutput>> getLikes({
    required core.AtUri uri,
    String? cid,
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findLikes(
        uri: uri,
        cid: cid,
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getRepostedBy
  Future<core.XRPCResponse<FeedGetRepostedByOutput>> getRepostedBy({
    required core.AtUri uri,
    String? cid,
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findRepostedBy(
        uri: uri,
        cid: cid,
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getPostThread
  Future<core.XRPCResponse<FeedGetPostThreadOutput>> getPostThread({
    required core.AtUri uri,
    int? depth,
    int? parentHeight,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findPostThread(
        uri: uri,
        depth: depth,
        parentHeight: parentHeight,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getPosts
  Future<core.XRPCResponse<FeedGetPostsOutput>> getPosts({
    required List<core.AtUri> uris,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findPosts(uris: uris);

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/generator
  Future<core.XRPCResponse<atp.RepoStrongRef>> generator({
    required String did,
    required String displayName,
    String? description,
    List<RichtextFacet>? descriptionFacets,
    atp.Blob? avatar,
    atp.Labels? labels,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await createGenerator(
        did: did,
        displayName: displayName,
        description: description,
        descriptionFacets: descriptionFacets,
        avatar: avatar,
        labels: labels,
        createdAt: createdAt,
        unspecced: unspecced,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getFeedGenerator
  Future<core.XRPCResponse<FeedGetFeedGeneratorOutput>> getFeedGenerator({
    required core.AtUri uri,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findGenerator(uri: uri);

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getFeedGenerators
  Future<core.XRPCResponse<FeedGetFeedGeneratorsOutput>> getFeedGenerators({
    required List<core.AtUri> uris,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findGenerators(uris: uris);

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/describeFeedGenerator
  Future<core.XRPCResponse<FeedDescribeFeedGeneratorOutput>>
      describeFeedGenerator() async =>
          // ignore: deprecated_member_use_from_same_package
          await findGeneratorInfo();

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getActorLikes
  Future<core.XRPCResponse<FeedGetActorLikesOutput>> getActorLikes({
    required String actor,
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findActorLikes(
        actor: actor,
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getSuggestedFeeds
  Future<core.XRPCResponse<FeedGetSuggestedFeedsOutput>> getSuggestedFeeds({
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findSuggestedFeeds(
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/getListFeed
  Future<core.XRPCResponse<FeedGetListFeedOutput>> getListFeed({
    required core.AtUri list,
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await findListFeed(
        list: list,
        limit: limit,
        cursor: cursor,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/threadgate
  Future<core.XRPCResponse<atp.RepoStrongRef>> threadgate({
    required core.AtUri postUri,
    List<UFeedThreadgateRecordAllow>? allowRules,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await createThreadgate(
        postUri: postUri,
        allowRules: allowRules,
        createdAt: createdAt,
        unspecced: unspecced,
      );

  /// https://atprotodart.com/docs/lexicons/app/bsky/feed/searchPosts
  Future<core.XRPCResponse<FeedSearchPostsOutput>> searchPosts(
    final String query, {
    int? limit,
    String? cursor,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      await searchPostsByQuery(
        query,
        limit: limit,
        cursor: cursor,
      );

  @Deprecated('Use .post instead. Will be removed')
  Future<core.XRPCResponse<atp.RepoStrongRef>> createPost({
    required String text,
    FeedPostReplyRef? reply,
    List<RichtextFacet>? facets,
    UFeedPostRecordEmbed? embed,
    List<String>? languageTags,
    atp.Labels? labels,
    List<String>? tags,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      await _ctx.atproto.repo.createRecord(
        collection: ns.appBskyFeedPost,
        record: {
          'text': text,
          'reply': reply?.toJson(),
          'facets': facets?.map((e) => e.toJson()).toList(),
          'embed': embed?.toJson(),
          'langs': languageTags,
          'labels': labels?.toJson(),
          'tags': tags,
          'createdAt': _ctx.toUtcIso8601String(createdAt),
          ...unspecced,
        },
      );

  @Deprecated('Use .postInBulk instead. Will be removed')
  Future<core.XRPCResponse<core.EmptyData>> createPosts(
    List<FeedPostRecord> params,
  ) async =>
      await _ctx.atproto.repo.createRecords(
        actions: params
            .map<atp.RepoApplyWritesCreate>(
              (e) => atp.RepoApplyWritesCreate(
                collection: ns.appBskyFeedPost,
                value: {
                  'text': e.text,
                  'reply': e.reply?.toJson(),
                  'facets': e.facets?.map((e) => e.toJson()).toList(),
                  'embed': e.embed?.toJson(),
                  'langs': e.langs,
                  'labels': e.labels?.toJson(),
                  'tags': e.tags,
                  'createdAt': _ctx.toUtcIso8601String(e.createdAt),
                },
              ),
            )
            .toList(),
      );

  @Deprecated('Use .thread instead. Will be removed')
  Future<core.XRPCResponse<atp.RepoStrongRef>> createThread(
    List<FeedPostRecord> params,
  ) async {
    if (params.isEmpty) {
      throw ArgumentError.value(
        params,
        'params',
        'must not be empty',
      );
    }

    final rootParam = params.removeAt(0);
    final rootRecord = await post(
      text: rootParam.text,
      facets: rootParam.facets,
      embed: rootParam.embed,
      languageTags: rootParam.langs,
      labels: rootParam.labels,
      tags: rootParam.tags,
      createdAt: rootParam.createdAt,
    );

    final rootRef = rootRecord.data;

    var parentRef = rootRecord.data;
    for (final param in params) {
      parentRef = (await post(
        text: param.text,
        reply: FeedPostReplyRef(
          root: rootRef,
          parent: parentRef,
        ),
        facets: param.facets,
        embed: param.embed,
        languageTags: param.langs,
        labels: param.labels,
        tags: param.tags,
        createdAt: param.createdAt,
      ))
          .data;
    }

    return rootRecord;
  }

  @Deprecated('Use .getTimeline instead. Will be removed')
  Future<core.XRPCResponse<FeedGetTimelineOutput>> findTimeline({
    String? algorithm,
    int? limit,
    String? cursor,
  }) async =>
      await _findTimeline(
        algorithm: algorithm,
        limit: limit,
        cursor: cursor,
        to: FeedGetTimelineOutput.fromJson,
      );

  @Deprecated('Use .repost instead. Will be removed')
  Future<core.XRPCResponse<atp.RepoStrongRef>> createRepost({
    required String cid,
    required core.AtUri uri,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      await _ctx.atproto.repo.createRecord(
        collection: ns.appBskyFeedRepost,
        record: {
          'subject': {
            'cid': cid,
            'uri': uri.toString(),
          },
          'createdAt': _ctx.toUtcIso8601String(createdAt),
          ...unspecced,
        },
      );

  @Deprecated('Use .repostInBulk instead. Will be removed')
  Future<core.XRPCResponse<core.EmptyData>> createReposts(
    List<FeedRepostRecord> params,
  ) async =>
      await _ctx.atproto.repo.createRecords(
        actions: params
            .map(
              (e) => atp.RepoApplyWritesCreate(
                collection: ns.appBskyFeedRepost,
                value: {
                  'subject': e.subject.toJson(),
                  'createdAt': _ctx.toUtcIso8601String(e.createdAt),
                },
              ),
            )
            .toList(),
      );

  @Deprecated('Use .like instead. Will be removed')
  Future<core.XRPCResponse<atp.RepoStrongRef>> createLike({
    required String cid,
    required core.AtUri uri,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      await _ctx.atproto.repo.createRecord(
        collection: ns.appBskyFeedLike,
        record: {
          'subject': {
            'cid': cid,
            'uri': uri.toString(),
          },
          'createdAt': _ctx.toUtcIso8601String(createdAt),
          ...unspecced,
        },
      );

  @Deprecated('Use .likeInBulk instead. Will be removed')
  Future<core.XRPCResponse<core.EmptyData>> createLikes(
    List<FeedLikeRecord> params,
  ) async =>
      await _ctx.atproto.repo.createRecords(
        actions: params
            .map(
              (e) => atp.RepoApplyWritesCreate(
                collection: ns.appBskyFeedLike,
                value: {
                  'subject': e.subject.toJson(),
                  'createdAt': _ctx.toUtcIso8601String(e.createdAt),
                },
              ),
            )
            .toList(),
      );

  @Deprecated('Use .getAuthorFeed instead. Will be removed')
  Future<core.XRPCResponse<FeedGetAuthorFeedOutput>> findFeed({
    required String actor,
    int? limit,
    String? cursor,
    FeedGetAuthorFeedInputFilter? filter,
  }) async =>
      await _findFeed(
        actor: actor,
        limit: limit,
        cursor: cursor,
        filter: filter,
        to: FeedGetAuthorFeedOutput.fromJson,
      );

  @Deprecated('Use .getFeed instead. Will be removed')
  Future<core.XRPCResponse<FeedGetFeedOutput>> findCustomFeed({
    required core.AtUri generatorUri,
    int? limit,
    String? cursor,
  }) async =>
      await _findCustomFeed(
        generatorUri: generatorUri,
        limit: limit,
        cursor: cursor,
        to: FeedGetFeedOutput.fromJson,
      );

  @Deprecated('Use .getFeedSkeleton instead. Will be removed')
  Future<core.XRPCResponse<FeedGetFeedSkeletonOutput>> findFeedSkeleton({
    required core.AtUri generatorUri,
    int? limit,
    String? cursor,
  }) async =>
      await _findFeedSkeleton(
        generatorUri: generatorUri,
        limit: limit,
        cursor: cursor,
        to: FeedGetFeedSkeletonOutput.fromJson,
      );

  @Deprecated('Use .getActorFeeds instead. Will be removed')
  Future<core.XRPCResponse<FeedGetActorFeedsOutput>> findActorFeeds({
    required String actor,
    int? limit,
    String? cursor,
  }) async =>
      await _findActorFeeds(
        actor: actor,
        limit: limit,
        cursor: cursor,
        to: FeedGetActorFeedsOutput.fromJson,
      );

  @Deprecated('Use .getLikes instead. Will be removed')
  Future<core.XRPCResponse<FeedGetLikesOutput>> findLikes({
    required core.AtUri uri,
    String? cid,
    int? limit,
    String? cursor,
  }) async =>
      await _findLikes(
        uri: uri,
        cid: cid,
        limit: limit,
        cursor: cursor,
        to: FeedGetLikesOutput.fromJson,
      );

  @Deprecated('Use .getRepostedBy instead. Will be removed')
  Future<core.XRPCResponse<FeedGetRepostedByOutput>> findRepostedBy({
    required core.AtUri uri,
    String? cid,
    int? limit,
    String? cursor,
  }) async =>
      await _findRepostedBy(
        uri: uri,
        cid: cid,
        limit: limit,
        cursor: cursor,
        to: FeedGetRepostedByOutput.fromJson,
      );

  @Deprecated('Use .getPostThread instead. Will be removed')
  Future<core.XRPCResponse<FeedGetPostThreadOutput>> findPostThread({
    required core.AtUri uri,
    int? depth,
    int? parentHeight,
  }) async =>
      await _findPostThread(
        uri: uri,
        depth: depth,
        parentHeight: parentHeight,
        to: FeedGetPostThreadOutput.fromJson,
      );

  @Deprecated('Use .getPosts instead. Will be removed')
  Future<core.XRPCResponse<FeedGetPostsOutput>> findPosts({
    required List<core.AtUri> uris,
  }) async =>
      await _findPosts(
        uris: uris,
        to: FeedGetPostsOutput.fromJson,
      );

  @Deprecated('Use .generator instead. Will be removed')
  Future<core.XRPCResponse<atp.RepoStrongRef>> createGenerator({
    required String did,
    required String displayName,
    String? description,
    List<RichtextFacet>? descriptionFacets,
    atp.Blob? avatar,
    atp.Labels? labels,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      await _ctx.atproto.repo.createRecord(
        collection: ns.appBskyFeedGenerator,
        record: {
          'did': did,
          'displayName': displayName,
          'description': description,
          'descriptionFacets':
              descriptionFacets?.map((e) => e.toJson()).toList(),
          'avatar': avatar?.toJson(),
          'labels': labels?.toJson(),
          'createdAt': _ctx.toUtcIso8601String(createdAt),
          ...unspecced,
        },
      );

  @Deprecated('Use .generatorInBulk instead. Will be removed')
  Future<core.XRPCResponse<core.EmptyData>> createGenerators(
    List<FeedGeneratorRecord> params,
  ) async =>
      await _ctx.atproto.repo.createRecords(
        actions: params
            .map(
              (e) => atp.RepoApplyWritesCreate(
                collection: ns.appBskyFeedGenerator,
                value: {
                  'did': e.did,
                  'displayName': e.displayName,
                  'description': e.description,
                  'descriptionFacets':
                      e.descriptionFacets?.map((e) => e.toJson()).toList(),
                  'avatar': e.avatar?.toJson(),
                  'labels': e.labels?.toJson(),
                  'createdAt': _ctx.toUtcIso8601String(e.createdAt),
                },
              ),
            )
            .toList(),
      );

  @Deprecated('Use .getFeedGenerator instead. Will be removed')
  Future<core.XRPCResponse<FeedGetFeedGeneratorOutput>> findGenerator({
    required core.AtUri uri,
  }) async =>
      await _findGenerator(
        uri: uri,
        to: FeedGetFeedGeneratorOutput.fromJson,
      );

  @Deprecated('Use .getFeedGenerators instead. Will be removed')
  Future<core.XRPCResponse<FeedGetFeedGeneratorsOutput>> findGenerators({
    required List<core.AtUri> uris,
  }) async =>
      await _findGenerators(
        uris: uris,
        to: FeedGetFeedGeneratorsOutput.fromJson,
      );

  @Deprecated('Use .describeFeedGenerator instead. Will be removed')
  Future<core.XRPCResponse<FeedDescribeFeedGeneratorOutput>>
      findGeneratorInfo() async => await _findGeneratorInfo(
            to: FeedDescribeFeedGeneratorOutput.fromJson,
          );

  @Deprecated('Use .getActorLikes instead. Will be removed')
  Future<core.XRPCResponse<FeedGetActorLikesOutput>> findActorLikes({
    required String actor,
    int? limit,
    String? cursor,
  }) async =>
      await _findActorLikes(
        actor: actor,
        limit: limit,
        cursor: cursor,
        to: FeedGetActorLikesOutput.fromJson,
      );

  @Deprecated('Use .getSuggestedFeeds instead. Will be removed')
  Future<core.XRPCResponse<FeedGetSuggestedFeedsOutput>> findSuggestedFeeds({
    int? limit,
    String? cursor,
  }) async =>
      await _findSuggestedFeeds(
        limit: limit,
        cursor: cursor,
        to: FeedGetSuggestedFeedsOutput.fromJson,
      );

  @Deprecated('Use .threadgate instead. Will be removed')
  Future<core.XRPCResponse<atp.RepoStrongRef>> createThreadgate({
    required core.AtUri postUri,
    List<UFeedThreadgateRecordAllow>? allowRules,
    DateTime? createdAt,
    Map<String, dynamic> unspecced = core.emptyJson,
  }) async =>
      await _ctx.atproto.repo.createRecord(
        collection: ns.appBskyFeedThreadgate,
        rkey: postUri.rkey,
        record: {
          r'$type': ids.appBskyFeedThreadgate,
          'post': postUri.toString(),
          'allow': allowRules?.map((e) => e.toJson()).toList(),
          'createdAt': _ctx.toUtcIso8601String(createdAt),
          ...unspecced,
        },
      );

  @Deprecated('Use .getListFeed instead. Will be removed')
  Future<core.XRPCResponse<FeedGetListFeedOutput>> findListFeed({
    required core.AtUri list,
    int? limit,
    String? cursor,
  }) async =>
      await _findListFeed(
        list: list,
        limit: limit,
        cursor: cursor,
        to: FeedGetListFeedOutput.fromJson,
      );

  @Deprecated('Use .searchPosts instead. Will be removed')
  Future<core.XRPCResponse<FeedSearchPostsOutput>> searchPostsByQuery(
    final String query, {
    int? limit,
    String? cursor,
  }) async =>
      await _searchPostsByQuery(
        query: query,
        limit: limit,
        cursor: cursor,
        to: FeedSearchPostsOutput.fromJson,
      );

  Future<core.XRPCResponse<T>> _findListFeed<T>({
    required core.AtUri list,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetListFeed,
        parameters: _buildGetListFeedParams(
          list: list,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findTimeline<T>({
    required String? algorithm,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetTimeline,
        parameters: _buildGetTimelineParams(
          algorithm: algorithm,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findFeed<T>({
    required String actor,
    required int? limit,
    required String? cursor,
    required FeedGetAuthorFeedInputFilter? filter,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetAuthorFeed,
        parameters: _buildGetAuthorFeedParams(
          actor: actor,
          limit: limit,
          cursor: cursor,
          filter: filter,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findCustomFeed<T>({
    required core.AtUri generatorUri,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetFeed,
        parameters: _buildGetFeedParams(
          generatorUri: generatorUri,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findFeedSkeleton<T>({
    required core.AtUri generatorUri,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetFeedSkeleton,
        parameters: _buildGetFeedSkeletonParams(
          generatorUri: generatorUri,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findActorFeeds<T>({
    required String actor,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetActorFeeds,
        parameters: _buildGetActorFeedsParams(
          actor: actor,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findLikes<T>({
    required core.AtUri uri,
    required String? cid,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetLikes,
        parameters: _buildGetLikes(
          uri: uri,
          cid: cid,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findRepostedBy<T>({
    required core.AtUri uri,
    required String? cid,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetRepostedBy,
        parameters: _buildGetRepostedBy(
          uri: uri,
          cid: cid,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findPostThread<T>({
    required core.AtUri uri,
    required int? depth,
    required int? parentHeight,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetPostThread,
        parameters: {
          'uri': uri,
          'depth': depth,
          'parentHeight': parentHeight,
        },
        to: to,
      );

  Future<core.XRPCResponse<T>> _findPosts<T>({
    required List<core.AtUri> uris,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetPosts,
        parameters: {
          'uris': uris.map((e) => e.toString()).toList(),
        },
        to: to,
      );

  Future<core.XRPCResponse<T>> _findGenerator<T>({
    required core.AtUri uri,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetFeedGenerator,
        parameters: {
          'feed': uri.toString(),
        },
        to: to,
      );

  Future<core.XRPCResponse<T>> _findGenerators<T>({
    required List<core.AtUri> uris,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetFeedGenerators,
        parameters: {
          'feeds': uris.map((e) => e.toString()).toList(),
        },
        to: to,
      );

  Future<core.XRPCResponse<T>> _findGeneratorInfo<T>({
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedDescribeFeedGenerator,
        to: to,
      );

  Future<core.XRPCResponse<T>> _findActorLikes<T>({
    required String actor,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetActorLikes,
        parameters: _buildGetActorLikes(
          actor: actor,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _findSuggestedFeeds<T>({
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedGetSuggestedFeeds,
        parameters: _buildGetSuggestedFeeds(
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Future<core.XRPCResponse<T>> _searchPostsByQuery<T>({
    required String query,
    required int? limit,
    required String? cursor,
    core.To<T>? to,
  }) async =>
      await _ctx.get(
        ns.appBskyFeedSearchPosts,
        parameters: _buildSearchPostsParams(
          query: query,
          limit: limit,
          cursor: cursor,
        ),
        to: to,
      );

  Map<String, dynamic> _buildGetTimelineParams({
    required String? algorithm,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'algorithm': algorithm,
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildGetAuthorFeedParams({
    required String actor,
    required int? limit,
    required String? cursor,
    required FeedGetAuthorFeedInputFilter? filter,
  }) =>
      {
        'actor': actor,
        'limit': limit,
        'cursor': cursor,
        'filter': filter,
      };

  Map<String, dynamic> _buildGetFeedParams({
    required core.AtUri generatorUri,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'feed': generatorUri.toString(),
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildGetFeedSkeletonParams({
    required core.AtUri generatorUri,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'feed': generatorUri.toString(),
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildGetActorFeedsParams({
    required String actor,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'actor': actor,
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildGetLikes({
    required core.AtUri uri,
    required String? cid,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'uri': uri,
        'cid': cid,
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildGetRepostedBy({
    required core.AtUri uri,
    required String? cid,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'uri': uri,
        'cid': cid,
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildGetActorLikes({
    required String actor,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'actor': actor,
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildGetSuggestedFeeds({
    required int? limit,
    required String? cursor,
  }) =>
      {
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildGetListFeedParams({
    required core.AtUri list,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'list': list,
        'limit': limit,
        'cursor': cursor,
      };

  Map<String, dynamic> _buildSearchPostsParams({
    required String query,
    required int? limit,
    required String? cursor,
  }) =>
      {
        'q': query,
        'limit': limit,
        'cursor': cursor,
      };
}

extension FeedServiceExtension on FeedService {
  Future<core.XRPCResponse<atp.RepoStrongRef>> thread(
    final List<FeedPostRecord> params,
  ) async {
    if (params.isEmpty) {
      throw ArgumentError.value(params, 'params', 'must not be empty');
    }

    final rootParam = params.removeAt(0);
    final rootRecord = await post(
      text: rootParam.text,
      facets: rootParam.facets,
      embed: rootParam.embed,
      languageTags: rootParam.langs,
      labels: rootParam.labels,
      tags: rootParam.tags,
      createdAt: rootParam.createdAt,
    );

    final rootRef = rootRecord.data;

    var parentRef = rootRecord.data;
    for (final param in params) {
      parentRef = (await post(
        text: param.text,
        reply: FeedPostReplyRef(
          root: rootRef,
          parent: parentRef,
        ),
        facets: param.facets,
        embed: param.embed,
        languageTags: param.langs,
        labels: param.labels,
        tags: param.tags,
        createdAt: param.createdAt,
      ))
          .data;
    }

    return rootRecord;
  }

  Future<core.XRPCResponse<core.EmptyData>> postInBulk(
    final List<FeedPostRecord> params,
  ) async =>
      await _ctx.atproto.repo.createRecordInBulk(
        actions: params
            .map<atp.RepoApplyWritesCreate>(
              (e) => atp.RepoApplyWritesCreate(
                collection: ns.appBskyFeedPost,
                value: {
                  'text': e.text,
                  'reply': e.reply?.toJson(),
                  'facets': e.facets?.map((e) => e.toJson()).toList(),
                  'embed': e.embed?.toJson(),
                  'langs': e.langs,
                  'labels': e.labels?.toJson(),
                  'tags': e.tags,
                  'createdAt': _ctx.toUtcIso8601String(e.createdAt),
                },
              ),
            )
            .toList(),
      );

  Future<core.XRPCResponse<core.EmptyData>> repostInBulk(
    final List<FeedRepostRecord> params,
  ) async =>
      await _ctx.atproto.repo.createRecordInBulk(
        actions: params
            .map(
              (e) => atp.RepoApplyWritesCreate(
                collection: ns.appBskyFeedRepost,
                value: {
                  'subject': e.subject.toJson(),
                  'createdAt': _ctx.toUtcIso8601String(e.createdAt),
                },
              ),
            )
            .toList(),
      );

  Future<core.XRPCResponse<core.EmptyData>> likeInBulk(
    final List<FeedLikeRecord> params,
  ) async =>
      await _ctx.atproto.repo.createRecordInBulk(
        actions: params
            .map(
              (e) => atp.RepoApplyWritesCreate(
                collection: ns.appBskyFeedLike,
                value: {
                  'subject': e.subject.toJson(),
                  'createdAt': _ctx.toUtcIso8601String(e.createdAt),
                },
              ),
            )
            .toList(),
      );

  Future<core.XRPCResponse<core.EmptyData>> generatorInBulk(
    final List<FeedGeneratorRecord> params,
  ) async =>
      await _ctx.atproto.repo.createRecordInBulk(
        actions: params
            .map(
              (e) => atp.RepoApplyWritesCreate(
                collection: ns.appBskyFeedGenerator,
                value: {
                  'did': e.did,
                  'displayName': e.displayName,
                  'description': e.description,
                  'descriptionFacets':
                      e.descriptionFacets?.map((e) => e.toJson()).toList(),
                  'avatar': e.avatar?.toJson(),
                  'labels': e.labels?.toJson(),
                  'createdAt': _ctx.toUtcIso8601String(e.createdAt),
                },
              ),
            )
            .toList(),
      );
}
