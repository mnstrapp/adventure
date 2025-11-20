// This is a generated file - do not edit.
//
// Generated from transaction.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TransactionType extends $pb.ProtobufEnum {
  static const TransactionType CREDIT =
      TransactionType._(0, _omitEnumNames ? '' : 'CREDIT');
  static const TransactionType DEBIT =
      TransactionType._(1, _omitEnumNames ? '' : 'DEBIT');

  static const $core.List<TransactionType> values = <TransactionType>[
    CREDIT,
    DEBIT,
  ];

  static final $core.List<TransactionType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static TransactionType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TransactionType._(super.value, super.name);
}

class TransactionStatus extends $pb.ProtobufEnum {
  static const TransactionStatus PREPARING =
      TransactionStatus._(0, _omitEnumNames ? '' : 'PREPARING');
  static const TransactionStatus PENDING =
      TransactionStatus._(1, _omitEnumNames ? '' : 'PENDING');
  static const TransactionStatus COMPLETED =
      TransactionStatus._(2, _omitEnumNames ? '' : 'COMPLETED');
  static const TransactionStatus FAILED =
      TransactionStatus._(3, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<TransactionStatus> values = <TransactionStatus>[
    PREPARING,
    PENDING,
    COMPLETED,
    FAILED,
  ];

  static final $core.List<TransactionStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TransactionStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TransactionStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
