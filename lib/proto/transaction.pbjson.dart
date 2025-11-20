// This is a generated file - do not edit.
//
// Generated from transaction.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use transactionTypeDescriptor instead')
const TransactionType$json = {
  '1': 'TransactionType',
  '2': [
    {'1': 'CREDIT', '2': 0},
    {'1': 'DEBIT', '2': 1},
  ],
};

/// Descriptor for `TransactionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transactionTypeDescriptor = $convert
    .base64Decode('Cg9UcmFuc2FjdGlvblR5cGUSCgoGQ1JFRElUEAASCQoFREVCSVQQAQ==');

@$core.Deprecated('Use transactionStatusDescriptor instead')
const TransactionStatus$json = {
  '1': 'TransactionStatus',
  '2': [
    {'1': 'PREPARING', '2': 0},
    {'1': 'PENDING', '2': 1},
    {'1': 'COMPLETED', '2': 2},
    {'1': 'FAILED', '2': 3},
  ],
};

/// Descriptor for `TransactionStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transactionStatusDescriptor = $convert.base64Decode(
    'ChFUcmFuc2FjdGlvblN0YXR1cxINCglQUkVQQVJJTkcQABILCgdQRU5ESU5HEAESDQoJQ09NUE'
    'xFVEVEEAISCgoGRkFJTEVEEAM=');

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = {
  '1': 'Transaction',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'wallet_id', '3': 2, '4': 1, '5': 9, '10': 'walletId'},
    {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
    {
      '1': 'transaction_type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.adventurers.TransactionType',
      '10': 'transactionType'
    },
    {
      '1': 'transaction_status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.adventurers.TransactionStatus',
      '10': 'transactionStatus'
    },
    {'1': 'data', '3': 6, '4': 1, '5': 9, '10': 'data'},
    {'1': 'error_message', '3': 7, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'created_at', '3': 8, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 9, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhIOCgJpZBgBIAEoCVICaWQSGwoJd2FsbGV0X2lkGAIgASgJUgh3YWxsZX'
    'RJZBIWCgZhbW91bnQYAyABKAVSBmFtb3VudBJHChB0cmFuc2FjdGlvbl90eXBlGAQgASgOMhwu'
    'YWR2ZW50dXJlcnMuVHJhbnNhY3Rpb25UeXBlUg90cmFuc2FjdGlvblR5cGUSTQoSdHJhbnNhY3'
    'Rpb25fc3RhdHVzGAUgASgOMh4uYWR2ZW50dXJlcnMuVHJhbnNhY3Rpb25TdGF0dXNSEXRyYW5z'
    'YWN0aW9uU3RhdHVzEhIKBGRhdGEYBiABKAlSBGRhdGESIwoNZXJyb3JfbWVzc2FnZRgHIAEoCV'
    'IMZXJyb3JNZXNzYWdlEh0KCmNyZWF0ZWRfYXQYCCABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVk'
    'X2F0GAkgASgJUgl1cGRhdGVkQXQ=');
