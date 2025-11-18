// This is a generated file - do not edit.
//
// Generated from chat.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use messageAttachmentTypeDescriptor instead')
const MessageAttachmentType$json = {
  '1': 'MessageAttachmentType',
  '2': [
    {'1': 'TEXT', '2': 0},
    {'1': 'IMAGE', '2': 1},
    {'1': 'AUDIO', '2': 2},
    {'1': 'VIDEO', '2': 3},
    {'1': 'FILE', '2': 4},
    {'1': 'URL', '2': 5},
  ],
};

/// Descriptor for `MessageAttachmentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageAttachmentTypeDescriptor = $convert.base64Decode(
    'ChVNZXNzYWdlQXR0YWNobWVudFR5cGUSCAoEVEVYVBAAEgkKBUlNQUdFEAESCQoFQVVESU8QAh'
    'IJCgVWSURFTxADEggKBEZJTEUQBBIHCgNVUkwQBQ==');

@$core.Deprecated('Use messageAttachmentDescriptor instead')
const MessageAttachment$json = {
  '1': 'MessageAttachment',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.adventurers.MessageAttachmentType',
      '10': 'type'
    },
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 9, '10': 'createdAt'},
  ],
};

/// Descriptor for `MessageAttachment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageAttachmentDescriptor = $convert.base64Decode(
    'ChFNZXNzYWdlQXR0YWNobWVudBI2CgR0eXBlGAEgASgOMiIuYWR2ZW50dXJlcnMuTWVzc2FnZU'
    'F0dGFjaG1lbnRUeXBlUgR0eXBlEhgKB2NvbnRlbnQYAiABKAlSB2NvbnRlbnQSHQoKY3JlYXRl'
    'ZF9hdBgDIAEoCVIJY3JlYXRlZEF0');

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'user',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.adventurers.User',
      '10': 'user'
    },
    {
      '1': 'attachments',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.adventurers.MessageAttachment',
      '10': 'attachments'
    },
    {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 9, '10': 'createdAt'},
    {
      '1': 'replied_to',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.adventurers.Message',
      '10': 'repliedTo'
    },
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBIlCgR1c2VyGAIgASgLMhEuYWR2ZW50dXJlcnMuVX'
    'NlclIEdXNlchJACgthdHRhY2htZW50cxgDIAMoCzIeLmFkdmVudHVyZXJzLk1lc3NhZ2VBdHRh'
    'Y2htZW50UgthdHRhY2htZW50cxIYCgdjb250ZW50GAQgASgJUgdjb250ZW50Eh0KCmNyZWF0ZW'
    'RfYXQYBSABKAlSCWNyZWF0ZWRBdBIzCgpyZXBsaWVkX3RvGAYgASgLMhQuYWR2ZW50dXJlcnMu'
    'TWVzc2FnZVIJcmVwbGllZFRv');

@$core.Deprecated('Use chatDescriptor instead')
const Chat$json = {
  '1': 'Chat',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'members',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.adventurers.User',
      '10': 'members'
    },
    {
      '1': 'messages',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.adventurers.Message',
      '10': 'messages'
    },
    {'1': 'created_at', '3': 6, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'private', '3': 8, '4': 1, '5': 8, '10': 'private'},
  ],
};

/// Descriptor for `Chat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatDescriptor = $convert.base64Decode(
    'CgRDaGF0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW'
    '9uGAMgASgJUgtkZXNjcmlwdGlvbhIrCgdtZW1iZXJzGAQgAygLMhEuYWR2ZW50dXJlcnMuVXNl'
    'clIHbWVtYmVycxIwCghtZXNzYWdlcxgFIAMoCzIULmFkdmVudHVyZXJzLk1lc3NhZ2VSCG1lc3'
    'NhZ2VzEh0KCmNyZWF0ZWRfYXQYBiABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAcgASgJ'
    'Ugl1cGRhdGVkQXQSGAoHcHJpdmF0ZRgIIAEoCFIHcHJpdmF0ZQ==');

@$core.Deprecated('Use createChatRequestDescriptor instead')
const CreateChatRequest$json = {
  '1': 'CreateChatRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'members',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.adventurers.User',
      '10': 'members'
    },
  ],
};

/// Descriptor for `CreateChatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createChatRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVDaGF0UmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGA'
    'IgASgJUgtkZXNjcmlwdGlvbhIrCgdtZW1iZXJzGAMgAygLMhEuYWR2ZW50dXJlcnMuVXNlclIH'
    'bWVtYmVycw==');

@$core.Deprecated('Use createChatResponseDescriptor instead')
const CreateChatResponse$json = {
  '1': 'CreateChatResponse',
  '2': [
    {
      '1': 'chat',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.adventurers.Chat',
      '10': 'chat'
    },
  ],
};

/// Descriptor for `CreateChatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createChatResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVDaGF0UmVzcG9uc2USJQoEY2hhdBgBIAEoCzIRLmFkdmVudHVyZXJzLkNoYXRSBG'
    'NoYXQ=');

@$core.Deprecated('Use getChatRequestDescriptor instead')
const GetChatRequest$json = {
  '1': 'GetChatRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetChatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChatRequestDescriptor =
    $convert.base64Decode('Cg5HZXRDaGF0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getChatResponseDescriptor instead')
const GetChatResponse$json = {
  '1': 'GetChatResponse',
  '2': [
    {
      '1': 'chat',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.adventurers.Chat',
      '10': 'chat'
    },
  ],
};

/// Descriptor for `GetChatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChatResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRDaGF0UmVzcG9uc2USJQoEY2hhdBgBIAEoCzIRLmFkdmVudHVyZXJzLkNoYXRSBGNoYX'
    'Q=');

@$core.Deprecated('Use updateChatRequestDescriptor instead')
const UpdateChatRequest$json = {
  '1': 'UpdateChatRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `UpdateChatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateChatRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVDaGF0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24=');

@$core.Deprecated('Use updateChatResponseDescriptor instead')
const UpdateChatResponse$json = {
  '1': 'UpdateChatResponse',
  '2': [
    {
      '1': 'chat',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.adventurers.Chat',
      '10': 'chat'
    },
  ],
};

/// Descriptor for `UpdateChatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateChatResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVDaGF0UmVzcG9uc2USJQoEY2hhdBgBIAEoCzIRLmFkdmVudHVyZXJzLkNoYXRSBG'
    'NoYXQ=');

@$core.Deprecated('Use deleteChatRequestDescriptor instead')
const DeleteChatRequest$json = {
  '1': 'DeleteChatRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteChatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteChatRequestDescriptor =
    $convert.base64Decode('ChFEZWxldGVDaGF0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteChatResponseDescriptor instead')
const DeleteChatResponse$json = {
  '1': 'DeleteChatResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteChatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteChatResponseDescriptor =
    $convert.base64Decode(
        'ChJEZWxldGVDaGF0UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');
