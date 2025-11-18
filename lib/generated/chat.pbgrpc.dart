// This is a generated file - do not edit.
//
// Generated from chat.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'chat.pb.dart' as $0;

export 'chat.pb.dart';

@$pb.GrpcServiceName('adventurers.ChatService')
class ChatServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ChatServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CreateChatResponse> createChat(
    $0.CreateChatRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createChat, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetChatResponse> getChat(
    $0.GetChatRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getChat, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateChatResponse> updateChat(
    $0.UpdateChatRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateChat, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteChatResponse> deleteChat(
    $0.DeleteChatRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteChat, request, options: options);
  }

  // method descriptors

  static final _$createChat =
      $grpc.ClientMethod<$0.CreateChatRequest, $0.CreateChatResponse>(
          '/adventurers.ChatService/CreateChat',
          ($0.CreateChatRequest value) => value.writeToBuffer(),
          $0.CreateChatResponse.fromBuffer);
  static final _$getChat =
      $grpc.ClientMethod<$0.GetChatRequest, $0.GetChatResponse>(
          '/adventurers.ChatService/GetChat',
          ($0.GetChatRequest value) => value.writeToBuffer(),
          $0.GetChatResponse.fromBuffer);
  static final _$updateChat =
      $grpc.ClientMethod<$0.UpdateChatRequest, $0.UpdateChatResponse>(
          '/adventurers.ChatService/UpdateChat',
          ($0.UpdateChatRequest value) => value.writeToBuffer(),
          $0.UpdateChatResponse.fromBuffer);
  static final _$deleteChat =
      $grpc.ClientMethod<$0.DeleteChatRequest, $0.DeleteChatResponse>(
          '/adventurers.ChatService/DeleteChat',
          ($0.DeleteChatRequest value) => value.writeToBuffer(),
          $0.DeleteChatResponse.fromBuffer);
}

@$pb.GrpcServiceName('adventurers.ChatService')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'adventurers.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateChatRequest, $0.CreateChatResponse>(
        'CreateChat',
        createChat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateChatRequest.fromBuffer(value),
        ($0.CreateChatResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetChatRequest, $0.GetChatResponse>(
        'GetChat',
        getChat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetChatRequest.fromBuffer(value),
        ($0.GetChatResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateChatRequest, $0.UpdateChatResponse>(
        'UpdateChat',
        updateChat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateChatRequest.fromBuffer(value),
        ($0.UpdateChatResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteChatRequest, $0.DeleteChatResponse>(
        'DeleteChat',
        deleteChat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteChatRequest.fromBuffer(value),
        ($0.DeleteChatResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateChatResponse> createChat_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateChatRequest> $request) async {
    return createChat($call, await $request);
  }

  $async.Future<$0.CreateChatResponse> createChat(
      $grpc.ServiceCall call, $0.CreateChatRequest request);

  $async.Future<$0.GetChatResponse> getChat_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetChatRequest> $request) async {
    return getChat($call, await $request);
  }

  $async.Future<$0.GetChatResponse> getChat(
      $grpc.ServiceCall call, $0.GetChatRequest request);

  $async.Future<$0.UpdateChatResponse> updateChat_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateChatRequest> $request) async {
    return updateChat($call, await $request);
  }

  $async.Future<$0.UpdateChatResponse> updateChat(
      $grpc.ServiceCall call, $0.UpdateChatRequest request);

  $async.Future<$0.DeleteChatResponse> deleteChat_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteChatRequest> $request) async {
    return deleteChat($call, await $request);
  }

  $async.Future<$0.DeleteChatResponse> deleteChat(
      $grpc.ServiceCall call, $0.DeleteChatRequest request);
}
