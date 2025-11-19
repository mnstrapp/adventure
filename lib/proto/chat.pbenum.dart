// This is a generated file - do not edit.
//
// Generated from chat.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MessageAttachmentType extends $pb.ProtobufEnum {
  static const MessageAttachmentType TEXT =
      MessageAttachmentType._(0, _omitEnumNames ? '' : 'TEXT');
  static const MessageAttachmentType IMAGE =
      MessageAttachmentType._(1, _omitEnumNames ? '' : 'IMAGE');
  static const MessageAttachmentType AUDIO =
      MessageAttachmentType._(2, _omitEnumNames ? '' : 'AUDIO');
  static const MessageAttachmentType VIDEO =
      MessageAttachmentType._(3, _omitEnumNames ? '' : 'VIDEO');
  static const MessageAttachmentType FILE =
      MessageAttachmentType._(4, _omitEnumNames ? '' : 'FILE');
  static const MessageAttachmentType URL =
      MessageAttachmentType._(5, _omitEnumNames ? '' : 'URL');

  static const $core.List<MessageAttachmentType> values =
      <MessageAttachmentType>[
    TEXT,
    IMAGE,
    AUDIO,
    VIDEO,
    FILE,
    URL,
  ];

  static final $core.List<MessageAttachmentType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static MessageAttachmentType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MessageAttachmentType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
