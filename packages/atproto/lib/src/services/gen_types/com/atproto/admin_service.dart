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
import '../../com/atproto/admin/defs/status_attr.dart';
import '../../com/atproto/admin/get_account_infos/output.dart';
import '../../com/atproto/admin/get_invite_codes/known_sort.dart';
import '../../com/atproto/admin/get_invite_codes/output.dart';
import '../../com/atproto/admin/get_subject_status/output.dart';
import '../../com/atproto/admin/search_accounts/output.dart';
import '../../com/atproto/admin/send_email/output.dart';
import '../../com/atproto/admin/update_subject_status/output.dart';
import '../../com/atproto/admin/update_subject_status/union_subject.dart';

final class AdminService {
  AdminService(this._ctx);

  final ATProtoServiceContext _ctx;

  /// Get the service-specific admin status of a subject (account, record, or blob).
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/getSubjectStatus
  Future<XRPCResponse<GetSubjectStatusOutput>> getSubjectStatus({
    String? did,
    AtUri? uri,
    String? blob,
  }) async =>
      await _ctx.get(
        ns.comAtprotoAdminGetSubjectStatus,
        parameters: {
          if (did != null) 'did': did,
          if (uri != null) 'uri': uri.toString(),
          if (blob != null) 'blob': blob,
        },
        to: const GetSubjectStatusOutputConverter().fromJson,
      );

  /// Update the password for a user account as an administrator.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/updateAccountPassword
  Future<XRPCResponse<EmptyData>> updateAccountPassword({
    required String did,
    required String password,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminUpdateAccountPassword,
        body: {
          'did': did,
          'password': password,
        },
      );

  /// Get an admin view of invite codes.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/getInviteCodes
  Future<XRPCResponse<GetInviteCodesOutput>> getInviteCodes({
    USort? sort,
    int? limit,
    String? cursor,
  }) async =>
      await _ctx.get(
        ns.comAtprotoAdminGetInviteCodes,
        parameters: {
          if (sort != null) 'sort': sort.toJson(),
          if (limit != null) 'limit': limit,
          if (cursor != null) 'cursor': cursor,
        },
        to: const GetInviteCodesOutputConverter().fromJson,
      );

  /// Get list of accounts that matches your search query.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/searchAccounts
  Future<XRPCResponse<SearchAccountsOutput>> searchAccounts({
    String? email,
    String? cursor,
    int? limit,
  }) async =>
      await _ctx.get(
        ns.comAtprotoAdminSearchAccounts,
        parameters: {
          if (email != null) 'email': email,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': limit,
        },
        to: const SearchAccountsOutputConverter().fromJson,
      );

  /// Administrative action to update an account's handle.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/updateAccountHandle
  Future<XRPCResponse<EmptyData>> updateAccountHandle({
    required String did,
    required String handle,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminUpdateAccountHandle,
        body: {
          'did': did,
          'handle': handle,
        },
      );

  /// Delete a user account as an administrator.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/deleteAccount
  Future<XRPCResponse<EmptyData>> deleteAccount({
    required String did,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminDeleteAccount,
        body: {
          'did': did,
        },
      );

  /// Disable an account from receiving new invite codes, but does not invalidate existing codes.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/disableAccountInvites
  Future<XRPCResponse<EmptyData>> disableAccountInvites({
    required String account,
    String? note,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminDisableAccountInvites,
        body: {
          'account': account,
          if (note != null) 'note': note,
        },
      );

  /// Get details about an account.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/getAccountInfo
  Future<XRPCResponse<EmptyData>> getAccountInfo({
    required String did,
  }) async =>
      await _ctx.get(
        ns.comAtprotoAdminGetAccountInfo,
        parameters: {
          'did': did,
        },
      );

  /// Update the service-specific admin status of a subject (account, record, or blob).
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/updateSubjectStatus
  Future<XRPCResponse<UpdateSubjectStatusOutput>> updateSubjectStatus({
    required USubject subject,
    StatusAttr? takedown,
    StatusAttr? deactivated,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminUpdateSubjectStatus,
        body: {
          'subject': subject.toJson(),
          if (takedown != null) 'takedown': takedown,
          if (deactivated != null) 'deactivated': deactivated,
        },
        to: const UpdateSubjectStatusOutputConverter().fromJson,
      );

  /// Re-enable an account's ability to receive invite codes.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/enableAccountInvites
  Future<XRPCResponse<EmptyData>> enableAccountInvites({
    required String account,
    String? note,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminEnableAccountInvites,
        body: {
          'account': account,
          if (note != null) 'note': note,
        },
      );

  /// Disable some set of codes and/or all codes associated with a set of users.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/disableInviteCodes
  Future<XRPCResponse<EmptyData>> disableInviteCodes({
    List<String>? codes,
    List<String>? accounts,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminDisableInviteCodes,
        body: {
          if (codes != null) 'codes': codes,
          if (accounts != null) 'accounts': accounts,
        },
      );

  /// Send email to a user's account email address.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/sendEmail
  Future<XRPCResponse<SendEmailOutput>> sendEmail({
    required String recipientDid,
    required String content,
    String? subject,
    required String senderDid,
    String? comment,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminSendEmail,
        body: {
          'recipientDid': recipientDid,
          'content': content,
          if (subject != null) 'subject': subject,
          'senderDid': senderDid,
          if (comment != null) 'comment': comment,
        },
        to: const SendEmailOutputConverter().fromJson,
      );

  /// Administrative action to update an account's email.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/updateAccountEmail
  Future<XRPCResponse<EmptyData>> updateAccountEmail({
    required String account,
    required String email,
  }) async =>
      await _ctx.post(
        ns.comAtprotoAdminUpdateAccountEmail,
        body: {
          'account': account,
          'email': email,
        },
      );

  /// Get details about some accounts.
  ///
  /// https://atprotodart.com/docs/lexicons/com/atproto/admin/getAccountInfos
  Future<XRPCResponse<GetAccountInfosOutput>> getAccountInfos({
    required List<String> dids,
  }) async =>
      await _ctx.get(
        ns.comAtprotoAdminGetAccountInfos,
        parameters: {
          'dids': dids,
        },
        to: const GetAccountInfosOutputConverter().fromJson,
      );
}
