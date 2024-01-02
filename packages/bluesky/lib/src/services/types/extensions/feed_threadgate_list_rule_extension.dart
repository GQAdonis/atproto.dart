// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:atproto/atproto.dart';

import '../feed_threadgate_list_rule.dart';

extension FeedThreadgateListRuleExtension on FeedThreadgateListRule {
  AtUri get listUri => list;
}
