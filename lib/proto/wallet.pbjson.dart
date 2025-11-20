// This is a generated file - do not edit.
//
// Generated from wallet.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use walletDescriptor instead')
const Wallet$json = {
  '1': 'Wallet',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'coins', '3': 3, '4': 1, '5': 5, '10': 'coins'},
    {
      '1': 'transactions',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.adventurers.Transaction',
      '10': 'transactions'
    },
  ],
};

/// Descriptor for `Wallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletDescriptor = $convert.base64Decode(
    'CgZXYWxsZXQSDgoCaWQYASABKAlSAmlkEhcKB3VzZXJfaWQYAiABKAlSBnVzZXJJZBIUCgVjb2'
    'lucxgDIAEoBVIFY29pbnMSPAoMdHJhbnNhY3Rpb25zGAQgAygLMhguYWR2ZW50dXJlcnMuVHJh'
    'bnNhY3Rpb25SDHRyYW5zYWN0aW9ucw==');
