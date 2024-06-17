// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:atproto/com_atproto_sync_subscribe_repos.dart';
import 'package:atproto_core/atproto_core.dart' as core;

// 🌎 Project imports:
import '../../ids.g.dart' as ids;
import '../entities/adaptor/repo_commit_create.dart';
import '../entities/adaptor/repo_commit_delete.dart';
import '../entities/adaptor/repo_commit_update.dart';
import '../extensions/at_uri.dart';
import '../gen_types/app/bsky/actor/profile/record.dart';
import '../gen_types/app/bsky/feed/generator/record.dart';
import '../gen_types/app/bsky/feed/like/record.dart';
import '../gen_types/app/bsky/feed/post/record.dart';
import '../gen_types/app/bsky/feed/repost/record.dart';
import '../gen_types/app/bsky/feed/threadgate/record.dart';
import '../gen_types/app/bsky/graph/block/record.dart';
import '../gen_types/app/bsky/graph/follow/record.dart';
import '../gen_types/app/bsky/graph/list/record.dart';
import '../gen_types/app/bsky/graph/listblock/record.dart';
import '../gen_types/app/bsky/graph/listitem/record.dart';
import '../gen_types/app/bsky/labeler/service/record.dart';

/// Action on create records.
typedef RepoCommitOnCreate<T> = FutureOr<void> Function(
    RepoCommitCreate<T> data);

/// Action on update records.
typedef RepoCommitOnUpdate<T> = FutureOr<void> Function(
    RepoCommitUpdate<T> data);

/// Action on delete records.
typedef RepoCommitOnDelete = FutureOr<void> Function(RepoCommitDelete data);

final class RepoCommitAdaptor {
  /// Returns the new instance of [RepoCommitAdaptor].
  const RepoCommitAdaptor({
    final RepoCommitOnCreate<PostRecord>? onCreatePost,
    final RepoCommitOnCreate<RepostRecord>? onCreateRepost,
    final RepoCommitOnCreate<LikeRecord>? onCreateLike,
    final RepoCommitOnCreate<GeneratorRecord>? onCreateGenerator,
    final RepoCommitOnCreate<ThreadgateRecord>? onCreateThreadgate,
    final RepoCommitOnCreate<FollowRecord>? onCreateFollow,
    final RepoCommitOnCreate<BlockRecord>? onCreateBlock,
    final RepoCommitOnCreate<ListRecord>? onCreateList,
    final RepoCommitOnCreate<ListitemRecord>? onCreateListItem,
    final RepoCommitOnCreate<ListblockRecord>? onCreateBlockList,
    final RepoCommitOnCreate<ServiceRecord>? onCreateLabelerService,
    final RepoCommitOnCreate<Map<String, dynamic>>? onCreateUnknown,
    final RepoCommitOnUpdate<ProfileRecord>? onUpdateProfile,
    final RepoCommitOnUpdate<Map<String, dynamic>>? onUpdateUnknown,
    final RepoCommitOnDelete? onDeletePost,
    final RepoCommitOnDelete? onDeleteRepost,
    final RepoCommitOnDelete? onDeleteLike,
    final RepoCommitOnDelete? onDeleteGenerator,
    final RepoCommitOnDelete? onDeleteThreadgate,
    final RepoCommitOnDelete? onDeleteFollow,
    final RepoCommitOnDelete? onDeleteBlock,
    final RepoCommitOnDelete? onDeleteList,
    final RepoCommitOnDelete? onDeleteListItem,
    final RepoCommitOnDelete? onDeleteBlockList,
    final RepoCommitOnDelete? onDeleteLabelerService,
    final RepoCommitOnDelete? onDeleteUnknown,
  })  : _onCreatePost = onCreatePost,
        _onCreateRepost = onCreateRepost,
        _onCreateLike = onCreateLike,
        _onCreateGenerator = onCreateGenerator,
        _onCreateThreadgate = onCreateThreadgate,
        _onCreateFollow = onCreateFollow,
        _onCreateBlock = onCreateBlock,
        _onCreateList = onCreateList,
        _onCreateListItem = onCreateListItem,
        _onCreateBlockList = onCreateBlockList,
        _onCreateLabelerService = onCreateLabelerService,
        _onCreateUnknown = onCreateUnknown,
        _onUpdateProfile = onUpdateProfile,
        _onUpdateUnknown = onUpdateUnknown,
        _onDeletePost = onDeletePost,
        _onDeleteRepost = onDeleteRepost,
        _onDeleteLike = onDeleteLike,
        _onDeleteGenerator = onDeleteGenerator,
        _onDeleteThreadgate = onDeleteThreadgate,
        _onDeleteFollow = onDeleteFollow,
        _onDeleteBlock = onDeleteBlock,
        _onDeleteList = onDeleteList,
        _onDeleteListItem = onDeleteListItem,
        _onDeleteBlockList = onDeleteBlockList,
        _onDeleteLabelerService = onDeleteLabelerService,
        _onDeleteUnknown = onDeleteUnknown;

  final RepoCommitOnCreate<PostRecord>? _onCreatePost;
  final RepoCommitOnCreate<RepostRecord>? _onCreateRepost;
  final RepoCommitOnCreate<LikeRecord>? _onCreateLike;
  final RepoCommitOnCreate<GeneratorRecord>? _onCreateGenerator;
  final RepoCommitOnCreate<ThreadgateRecord>? _onCreateThreadgate;
  final RepoCommitOnCreate<FollowRecord>? _onCreateFollow;
  final RepoCommitOnCreate<BlockRecord>? _onCreateBlock;
  final RepoCommitOnCreate<ListRecord>? _onCreateList;
  final RepoCommitOnCreate<ListitemRecord>? _onCreateListItem;
  final RepoCommitOnCreate<ListblockRecord>? _onCreateBlockList;
  final RepoCommitOnCreate<ServiceRecord>? _onCreateLabelerService;
  final RepoCommitOnCreate<Map<String, dynamic>>? _onCreateUnknown;

  final RepoCommitOnUpdate<ProfileRecord>? _onUpdateProfile;
  final RepoCommitOnUpdate<Map<String, dynamic>>? _onUpdateUnknown;

  final RepoCommitOnDelete? _onDeletePost;
  final RepoCommitOnDelete? _onDeleteRepost;
  final RepoCommitOnDelete? _onDeleteLike;
  final RepoCommitOnDelete? _onDeleteGenerator;
  final RepoCommitOnDelete? _onDeleteThreadgate;
  final RepoCommitOnDelete? _onDeleteFollow;
  final RepoCommitOnDelete? _onDeleteBlock;
  final RepoCommitOnDelete? _onDeleteList;
  final RepoCommitOnDelete? _onDeleteListItem;
  final RepoCommitOnDelete? _onDeleteBlockList;
  final RepoCommitOnDelete? _onDeleteLabelerService;
  final RepoCommitOnDelete? _onDeleteUnknown;

  /// Performs actions based on [data].
  FutureOr<void> execute(final Commit data) async {
    for (final op in data.ops) {
      if (op.action.isUnknownValue) continue;

      switch (op.action.knownValue) {
        case KnownAction.create:
          await _onCreate(data, op);
          break;
        case KnownAction.update:
          await _onUpdate(data, op);
          break;
        case KnownAction.delete:
          await _onDelete(data, op);
          break;
      }
    }
  }

  /// Performs action on create.
  Future<void> _onCreate(
    final Commit data,
    final RepoOp op,
  ) async {
    final record = op.getRecord(data.blocks);
    if (record == null) return;

    final uri = op.getUri(data.repo);

    if (uri.isFeedPost && _isFeedPost(record)) {
      await _onCreatePost?.call(
        RepoCommitCreate<PostRecord>(
          record: const PostRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isFeedRepost && _isFeedRepost(record)) {
      await _onCreateRepost?.call(
        RepoCommitCreate<RepostRecord>(
          record: const RepostRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isFeedLike && _isFeedLike(record)) {
      await _onCreateLike?.call(
        RepoCommitCreate<LikeRecord>(
          record: const LikeRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isFeedGenerator && _isFeedGenerator(record)) {
      await _onCreateGenerator?.call(
        RepoCommitCreate<GeneratorRecord>(
          record: const GeneratorRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isFeedThreadgate && _isFeedThreadgate(record)) {
      await _onCreateThreadgate?.call(
        RepoCommitCreate<ThreadgateRecord>(
          record: const ThreadgateRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isGraphFollow && _isGraphFollow(record)) {
      await _onCreateFollow?.call(
        RepoCommitCreate<FollowRecord>(
          record: const FollowRecordConverter().fromJson(record),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isGraphBlock && _isGraphBlock(record)) {
      await _onCreateBlock?.call(
        RepoCommitCreate<BlockRecord>(
          record: const BlockRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isGraphList && _isGraphList(record)) {
      await _onCreateList?.call(
        RepoCommitCreate<ListRecord>(
          record: const ListRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isGraphListItem && _isGraphListItem(record)) {
      await _onCreateListItem?.call(
        RepoCommitCreate<ListitemRecord>(
          record: const ListitemRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isGraphBlockList && _isGraphBlockList(record)) {
      await _onCreateBlockList?.call(
        RepoCommitCreate<ListblockRecord>(
          record: const ListblockRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else if (uri.isLabelerService && _isLabelerService(record)) {
      await _onCreateLabelerService?.call(
        RepoCommitCreate<ServiceRecord>(
          record: const ServiceRecordConverter().fromJson(
            record,
          ),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    } else {
      await _onCreateUnknown?.call(
        RepoCommitCreate<Map<String, dynamic>>(
          record: record,
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
        ),
      );
    }
  }

  /// Performs actions on update.
  Future<void> _onUpdate(
    final Commit data,
    final RepoOp op,
  ) async {
    final record = op.getRecord(data.blocks);
    if (record == null) return;

    final uri = op.getUri(data.repo);

    if (uri.isActorProfile && _isActorProfile(record)) {
      await _onUpdateProfile?.call(
        RepoCommitUpdate<ProfileRecord>(
          record: const ProfileRecordConverter().fromJson(record),
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else {
      await _onUpdateUnknown?.call(
        RepoCommitUpdate<Map<String, dynamic>>(
          record: record,
          uri: uri,
          cid: op.cid,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    }
  }

  /// Performs actions on delete.
  Future<void> _onDelete(
    final Commit data,
    final RepoOp op,
  ) async {
    final uri = op.getUri(data.repo);

    if (uri.isFeedPost) {
      await _onDeletePost?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isFeedRepost) {
      await _onDeleteRepost?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isFeedLike) {
      await _onDeleteLike?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isFeedGenerator) {
      await _onDeleteGenerator?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isFeedThreadgate) {
      await _onDeleteThreadgate?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isGraphFollow) {
      await _onDeleteFollow?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isGraphBlock) {
      await _onDeleteBlock?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isGraphList) {
      await _onDeleteList?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isGraphListItem) {
      await _onDeleteListItem?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isGraphBlockList) {
      await _onDeleteBlockList?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else if (uri.isLabelerService) {
      await _onDeleteLabelerService?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    } else {
      await _onDeleteUnknown?.call(
        RepoCommitDelete(
          uri: uri,
          author: data.repo,
          cursor: data.seq,
          createdAt: data.time,
        ),
      );
    }
  }

  /// Returns true if [record] is actor profile, otherwise false.
  bool _isActorProfile(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyActorProfile;

  /// Returns true if [record] is feed post, otherwise false.
  bool _isFeedPost(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyFeedPost;

  /// Returns true if [record] is feed repost, otherwise false.
  bool _isFeedRepost(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyFeedRepost;

  /// Returns true if [record] is feed like, otherwise false.
  bool _isFeedLike(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyFeedLike;

  /// Returns true if [record] is feed generator, otherwise false.
  bool _isFeedGenerator(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyFeedGenerator;

  /// Returns true if [record] is feed threadgate, otherwise false.
  bool _isFeedThreadgate(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyFeedThreadgate;

  /// Returns true if [record] is graph follow, otherwise false.
  bool _isGraphFollow(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyGraphFollow;

  /// Returns true if [record] is graph block, otherwise false.
  bool _isGraphBlock(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyGraphBlock;

  /// Returns true if [record] is graph list, otherwise false.
  bool _isGraphList(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyGraphList;

  /// Returns true if [record] is graph list item, otherwise false.
  bool _isGraphListItem(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyGraphListitem;

  /// Returns true if [record] is graph block list, otherwise false.
  bool _isGraphBlockList(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyGraphListblock;

  /// Returns true if [record] is labeler service, otherwise false.
  bool _isLabelerService(final Map<String, dynamic> record) =>
      record[core.objectType] == ids.appBskyLabelerService;
}
