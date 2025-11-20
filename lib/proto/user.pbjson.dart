// This is a generated file - do not edit.
//
// Generated from user.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'phone', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'phone', '17': true},
    {'1': 'experience_level', '3': 5, '4': 1, '5': 5, '10': 'experienceLevel'},
    {
      '1': 'experience_points',
      '3': 6,
      '4': 1,
      '5': 5,
      '10': 'experiencePoints'
    },
    {
      '1': 'experience_to_next_level',
      '3': 7,
      '4': 1,
      '5': 5,
      '10': 'experienceToNextLevel'
    },
    {'1': 'coins', '3': 8, '4': 1, '5': 5, '10': 'coins'},
    {
      '1': 'mnstrs',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.adventurers.Mnstr',
      '10': 'mnstrs'
    },
    {
      '1': 'wallet',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.adventurers.Wallet',
      '9': 1,
      '10': 'wallet',
      '17': true
    },
  ],
  '8': [
    {'1': '_phone'},
    {'1': '_wallet'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIhCgxkaXNwbGF5X25hbWUYAiABKAlSC2Rpc3BsYXlOYW'
    '1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBIZCgVwaG9uZRgEIAEoCUgAUgVwaG9uZYgBARIpChBl'
    'eHBlcmllbmNlX2xldmVsGAUgASgFUg9leHBlcmllbmNlTGV2ZWwSKwoRZXhwZXJpZW5jZV9wb2'
    'ludHMYBiABKAVSEGV4cGVyaWVuY2VQb2ludHMSNwoYZXhwZXJpZW5jZV90b19uZXh0X2xldmVs'
    'GAcgASgFUhVleHBlcmllbmNlVG9OZXh0TGV2ZWwSFAoFY29pbnMYCCABKAVSBWNvaW5zEioKBm'
    '1uc3RycxgJIAMoCzISLmFkdmVudHVyZXJzLk1uc3RyUgZtbnN0cnMSMAoGd2FsbGV0GAogASgL'
    'MhMuYWR2ZW50dXJlcnMuV2FsbGV0SAFSBndhbGxldIgBAUIICgZfcGhvbmVCCQoHX3dhbGxldA'
    '==');
