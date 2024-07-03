// Copyright 2024 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// coverage:ignore-file
// ignore_for_file: type=lint
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Lex Generator
// **************************************************************************

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart';

// 🌎 Project imports:
import '../../../../nsids.g.dart' as ns;
import '../../../service_context.dart';
import '../../tools/ozone/team/add_member/known_role.dart';
import '../../tools/ozone/team/defs/member.dart';
import '../../tools/ozone/team/list_members/output.dart';
import '../../tools/ozone/team/update_member/known_role.dart';

/// Contains `tools.ozone.team.*` endpoints.
final class TeamService {
  TeamService(this._ctx);

  final BlueskyServiceContext _ctx;

  /// Update a member in the ozone service. Requires admin role.
  ///
  /// https://atprotodart.com/docs/lexicons/tools/ozone/team/updateMember
  Future<XRPCResponse<Member>> updateMember({
    required String did,
    bool? disabled,
    URole? role,
    Map<String, String>? $headers,
    PostClient? $client,
  }) async =>
      await _ctx.post<Member>(
        ns.toolsOzoneTeamUpdateMember,
        headers: $headers,
        body: {
          'did': did,
          if (disabled != null) 'disabled': disabled,
          if (role != null) 'role': role.toJson(),
        },
        to: const MemberConverter().fromJson,
        client: $client,
      );

  /// Delete a member from ozone team. Requires admin role.
  ///
  /// https://atprotodart.com/docs/lexicons/tools/ozone/team/deleteMember
  Future<XRPCResponse<EmptyData>> deleteMember({
    required String did,
    Map<String, String>? $headers,
    PostClient? $client,
  }) async =>
      await _ctx.post<EmptyData>(
        ns.toolsOzoneTeamDeleteMember,
        headers: $headers,
        body: {
          'did': did,
        },
        client: $client,
      );

  /// List all members with access to the ozone service.
  ///
  /// https://atprotodart.com/docs/lexicons/tools/ozone/team/listMembers
  Future<XRPCResponse<ListMembersOutput>> listMembers({
    int? limit,
    String? cursor,
    Map<String, String>? $headers,
    GetClient? $client,
  }) async =>
      await _ctx.get<ListMembersOutput>(
        ns.toolsOzoneTeamListMembers,
        headers: $headers,
        parameters: {
          if (limit != null) 'limit': limit.toString(),
          if (cursor != null) 'cursor': cursor,
        },
        to: const ListMembersOutputConverter().fromJson,
        client: $client,
      );

  /// Add a member to the ozone team. Requires admin role.
  ///
  /// https://atprotodart.com/docs/lexicons/tools/ozone/team/addMember
  Future<XRPCResponse<Member>> addMember({
    required String did,
    required URole role,
    Map<String, String>? $headers,
    PostClient? $client,
  }) async =>
      await _ctx.post<Member>(
        ns.toolsOzoneTeamAddMember,
        headers: $headers,
        body: {
          'did': did,
          'role': role.toJson(),
        },
        to: const MemberConverter().fromJson,
        client: $client,
      );
}
