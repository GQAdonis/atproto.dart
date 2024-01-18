// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:atproto/atproto.dart' as atp;
import 'package:atproto_core/atproto_core.dart' as core;

// 🌎 Project imports:
import 'package:bluesky/ids.dart';
import 'package:bluesky/src/services/graph_service.dart';
import 'package:bluesky/src/services/types/graph/block/_z.dart';
import 'package:bluesky/src/services/types/graph/follow/_z.dart';
import 'package:bluesky/src/services/types/graph/get_blocks/_z.dart';
import 'package:bluesky/src/services/types/graph/get_followers/_z.dart';
import 'package:bluesky/src/services/types/graph/get_follows/_z.dart';
import 'package:bluesky/src/services/types/graph/get_list/_z.dart';
import 'package:bluesky/src/services/types/graph/get_list_blocks/_z.dart';
import 'package:bluesky/src/services/types/graph/get_list_mutes/_z.dart';
import 'package:bluesky/src/services/types/graph/get_lists/_z.dart';
import 'package:bluesky/src/services/types/graph/get_mutes/_z.dart';
import 'package:bluesky/src/services/types/graph/get_suggested_follows_by_actor/_z.dart';
import 'package:bluesky/src/services/types/graph/list/_z.dart';
import 'package:bluesky/src/services/types/graph/listitem/_z.dart';
import 'suite/service_suite.dart';

void main() {
  testGraph<atp.StrongRef>(
    (m, s) => s.follow(did: m.did),
    bulk: (m, s) => s.followInBulk([
      GraphFollowRecord(
        subject: m.did,
        createdAt: DateTime.now(),
      )
    ]),
    id: appBskyGraphFollow,
  );

  testGraph<GraphGetFollowsOutput>(
    (m, s) => s.getFollows(actor: m.actor),
    id: appBskyGraphGetFollows,
  );

  testGraph<GraphGetFollowersOutput>(
    (m, s) => s.getFollowers(actor: m.actor),
    id: appBskyGraphGetFollowers,
  );

  testGraph<core.EmptyData>(
    (m, s) => s.muteActor(actor: m.actor),
    id: appBskyGraphMuteActor,
  );

  testGraph<core.EmptyData>(
    (m, s) => s.unmuteActor(actor: m.actor),
    id: appBskyGraphUnmuteActor,
  );

  testGraph<GraphGetMutesOutput>(
    (m, s) => s.getMutes(),
    id: appBskyGraphGetMutes,
  );

  testGraph<GraphGetBlocksOutput>(
    (m, s) => s.getBlocks(),
    id: appBskyGraphGetBlocks,
  );

  testGraph<atp.StrongRef>(
    (m, s) => s.block(did: m.did),
    bulk: (m, s) => s.blockInBulk([
      GraphBlockRecord(
        subject: m.did,
        createdAt: DateTime.now(),
      )
    ]),
    id: appBskyGraphBlock,
  );

  testGraph<atp.StrongRef>(
    (m, s) => s.list(purpose: appBskyGraphDefsModlist, name: m.name),
    bulk: (m, s) => s.listInBulk([
      GraphListRecord(
        purpose: appBskyGraphDefsModlist,
        name: m.name,
        createdAt: DateTime.now(),
      )
    ]),
    id: appBskyGraphList,
  );

  testGraph<atp.StrongRef>(
    (m, s) => s.modlist(name: m.name),
    id: appBskyGraphList,
    label: 'Moderation',
  );

  testGraph<atp.StrongRef>(
    (m, s) => s.curatelist(name: m.name),
    id: appBskyGraphList,
    label: 'Curation',
  );

  testGraph<GraphGetListsOutput>(
    (m, s) => s.getLists(actor: m.actor),
    id: appBskyGraphGetLists,
  );

  testGraph<GraphGetListOutput>(
    (m, s) => s.getList(list: m.uri),
    id: appBskyGraphGetList,
  );

  testGraph<atp.StrongRef>(
    (m, s) => s.listitem(subject: m.did, list: m.uri),
    bulk: (m, s) => s.listitemInBulk([
      GraphListitemRecord(
        subject: m.did,
        list: m.uri,
        createdAt: DateTime.now(),
      )
    ]),
    id: appBskyGraphListitem,
  );

  testGraph<GraphGetListMutesOutput>(
    (m, s) => s.getListMutes(),
    id: appBskyGraphGetListMutes,
  );

  testGraph<GraphGetListBlocksOutput>(
    (m, s) => s.getListBlocks(),
    id: appBskyGraphGetListBlocks,
  );

  testGraph<core.EmptyData>(
    (m, s) => s.muteActorList(list: m.uri),
    id: appBskyGraphMuteActorList,
  );

  testGraph<core.EmptyData>(
    (m, s) => s.unmuteActorList(list: m.uri),
    id: appBskyGraphUnmuteActorList,
  );

  testGraph<GraphGetSuggestedFollowsByActorOutput>(
    (m, s) => s.getSuggestedFollowsByActor(actor: m.actor),
    id: appBskyGraphGetSuggestedFollowsByActor,
  );

  testGraph<atp.StrongRef>(
    (m, s) => s.listblock(listUri: m.uri),
    id: appBskyGraphListblock,
  );
}
