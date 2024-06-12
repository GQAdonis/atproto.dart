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
import '../../chat/bsky/convo/defs/message_input.dart';
import '../../chat/bsky/convo/get_convo/output.dart';
import '../../chat/bsky/convo/get_convo_for_members/output.dart';
import '../../chat/bsky/convo/get_log/output.dart';
import '../../chat/bsky/convo/get_messages/output.dart';
import '../../chat/bsky/convo/leave_convo/output.dart';
import '../../chat/bsky/convo/list_convos/output.dart';
import '../../chat/bsky/convo/mute_convo/output.dart';
import '../../chat/bsky/convo/send_message_batch/batch_item.dart';
import '../../chat/bsky/convo/send_message_batch/output.dart';
import '../../chat/bsky/convo/unmute_convo/output.dart';
import '../../chat/bsky/convo/update_read/output.dart';

/// Contains `chat.bsky.convo.*` endpoints.
final class ConvoService {
  ConvoService(this._ctx);

  final BlueskyServiceContext _ctx;

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/muteConvo
  Future<XRPCResponse<MuteConvoOutput>> muteConvo({
    required String convoId,
    Map<String, String>? headers,
    PostClient? client,
  }) async =>
      await _ctx.post<MuteConvoOutput>(
        ns.chatBskyConvoMuteConvo,
        headers: headers,
        body: {
          'convoId': convoId,
        },
        to: const MuteConvoOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/getLog
  Future<XRPCResponse<GetLogOutput>> getLog({
    String? cursor,
    Map<String, String>? headers,
    GetClient? client,
  }) async =>
      await _ctx.get<GetLogOutput>(
        ns.chatBskyConvoGetLog,
        headers: headers,
        parameters: {
          if (cursor != null) 'cursor': cursor,
        },
        to: const GetLogOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/leaveConvo
  Future<XRPCResponse<LeaveConvoOutput>> leaveConvo({
    required String convoId,
    Map<String, String>? headers,
    PostClient? client,
  }) async =>
      await _ctx.post<LeaveConvoOutput>(
        ns.chatBskyConvoLeaveConvo,
        headers: headers,
        body: {
          'convoId': convoId,
        },
        to: const LeaveConvoOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/getMessages
  Future<XRPCResponse<GetMessagesOutput>> getMessages({
    required String convoId,
    int? limit,
    String? cursor,
    Map<String, String>? headers,
    GetClient? client,
  }) async =>
      await _ctx.get<GetMessagesOutput>(
        ns.chatBskyConvoGetMessages,
        headers: headers,
        parameters: {
          'convoId': convoId,
          if (limit != null) 'limit': limit,
          if (cursor != null) 'cursor': cursor,
        },
        to: const GetMessagesOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/getConvoForMembers
  Future<XRPCResponse<GetConvoForMembersOutput>> getConvoForMembers({
    required List<String> members,
    Map<String, String>? headers,
    GetClient? client,
  }) async =>
      await _ctx.get<GetConvoForMembersOutput>(
        ns.chatBskyConvoGetConvoForMembers,
        headers: headers,
        parameters: {
          'members': members,
        },
        to: const GetConvoForMembersOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/unmuteConvo
  Future<XRPCResponse<UnmuteConvoOutput>> unmuteConvo({
    required String convoId,
    Map<String, String>? headers,
    PostClient? client,
  }) async =>
      await _ctx.post<UnmuteConvoOutput>(
        ns.chatBskyConvoUnmuteConvo,
        headers: headers,
        body: {
          'convoId': convoId,
        },
        to: const UnmuteConvoOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/listConvos
  Future<XRPCResponse<ListConvosOutput>> listConvos({
    int? limit,
    String? cursor,
    Map<String, String>? headers,
    GetClient? client,
  }) async =>
      await _ctx.get<ListConvosOutput>(
        ns.chatBskyConvoListConvos,
        headers: headers,
        parameters: {
          if (limit != null) 'limit': limit,
          if (cursor != null) 'cursor': cursor,
        },
        to: const ListConvosOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/deleteMessageForSelf
  Future<XRPCResponse<EmptyData>> deleteMessageForSelf({
    required String convoId,
    required String messageId,
    Map<String, String>? headers,
    PostClient? client,
  }) async =>
      await _ctx.post<EmptyData>(
        ns.chatBskyConvoDeleteMessageForSelf,
        headers: headers,
        body: {
          'convoId': convoId,
          'messageId': messageId,
        },
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/getConvo
  Future<XRPCResponse<GetConvoOutput>> getConvo({
    required String convoId,
    Map<String, String>? headers,
    GetClient? client,
  }) async =>
      await _ctx.get<GetConvoOutput>(
        ns.chatBskyConvoGetConvo,
        headers: headers,
        parameters: {
          'convoId': convoId,
        },
        to: const GetConvoOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/sendMessageBatch
  Future<XRPCResponse<SendMessageBatchOutput>> sendMessageBatch({
    required List<BatchItem> items,
    Map<String, String>? headers,
    PostClient? client,
  }) async =>
      await _ctx.post<SendMessageBatchOutput>(
        ns.chatBskyConvoSendMessageBatch,
        headers: headers,
        body: {
          'items': items.map((e) => e.toJson()).toList(),
        },
        to: const SendMessageBatchOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/updateRead
  Future<XRPCResponse<UpdateReadOutput>> updateRead({
    required String convoId,
    String? messageId,
    Map<String, String>? headers,
    PostClient? client,
  }) async =>
      await _ctx.post<UpdateReadOutput>(
        ns.chatBskyConvoUpdateRead,
        headers: headers,
        body: {
          'convoId': convoId,
          if (messageId != null) 'messageId': messageId,
        },
        to: const UpdateReadOutputConverter().fromJson,
      );

  /// https://atprotodart.com/docs/lexicons/chat/bsky/convo/sendMessage
  Future<XRPCResponse<EmptyData>> sendMessage({
    required String convoId,
    required MessageInput message,
    Map<String, String>? headers,
    PostClient? client,
  }) async =>
      await _ctx.post<EmptyData>(
        ns.chatBskyConvoSendMessage,
        headers: headers,
        body: {
          'convoId': convoId,
          'message': message,
        },
      );
}
