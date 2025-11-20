// This is a generated file - do not edit.
//
// Generated from mnstr.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mnstrDescriptor instead')
const Mnstr$json = {
  '1': 'Mnstr',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'mnstr_name', '3': 3, '4': 1, '5': 9, '10': 'mnstrName'},
    {
      '1': 'mnstr_description',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'mnstrDescription'
    },
    {'1': 'mnstr_qr_code', '3': 5, '4': 1, '5': 9, '10': 'mnstrQrCode'},
    {'1': 'current_level', '3': 6, '4': 1, '5': 5, '10': 'currentLevel'},
    {
      '1': 'current_experience',
      '3': 7,
      '4': 1,
      '5': 5,
      '10': 'currentExperience'
    },
    {'1': 'current_health', '3': 8, '4': 1, '5': 5, '10': 'currentHealth'},
    {'1': 'max_health', '3': 9, '4': 1, '5': 5, '10': 'maxHealth'},
    {'1': 'current_attack', '3': 10, '4': 1, '5': 5, '10': 'currentAttack'},
    {'1': 'max_attack', '3': 11, '4': 1, '5': 5, '10': 'maxAttack'},
    {'1': 'current_defense', '3': 12, '4': 1, '5': 5, '10': 'currentDefense'},
    {'1': 'max_defense', '3': 13, '4': 1, '5': 5, '10': 'maxDefense'},
    {'1': 'current_speed', '3': 14, '4': 1, '5': 5, '10': 'currentSpeed'},
    {'1': 'max_speed', '3': 15, '4': 1, '5': 5, '10': 'maxSpeed'},
    {
      '1': 'current_intelligence',
      '3': 16,
      '4': 1,
      '5': 5,
      '10': 'currentIntelligence'
    },
    {'1': 'max_intelligence', '3': 17, '4': 1, '5': 5, '10': 'maxIntelligence'},
    {'1': 'current_magic', '3': 18, '4': 1, '5': 5, '10': 'currentMagic'},
    {'1': 'max_magic', '3': 19, '4': 1, '5': 5, '10': 'maxMagic'},
    {
      '1': 'experience_to_next_level',
      '3': 20,
      '4': 1,
      '5': 5,
      '10': 'experienceToNextLevel'
    },
  ],
};

/// Descriptor for `Mnstr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mnstrDescriptor = $convert.base64Decode(
    'CgVNbnN0chIOCgJpZBgBIAEoCVICaWQSFwoHdXNlcl9pZBgCIAEoCVIGdXNlcklkEh0KCm1uc3'
    'RyX25hbWUYAyABKAlSCW1uc3RyTmFtZRIrChFtbnN0cl9kZXNjcmlwdGlvbhgEIAEoCVIQbW5z'
    'dHJEZXNjcmlwdGlvbhIiCg1tbnN0cl9xcl9jb2RlGAUgASgJUgttbnN0clFyQ29kZRIjCg1jdX'
    'JyZW50X2xldmVsGAYgASgFUgxjdXJyZW50TGV2ZWwSLQoSY3VycmVudF9leHBlcmllbmNlGAcg'
    'ASgFUhFjdXJyZW50RXhwZXJpZW5jZRIlCg5jdXJyZW50X2hlYWx0aBgIIAEoBVINY3VycmVudE'
    'hlYWx0aBIdCgptYXhfaGVhbHRoGAkgASgFUgltYXhIZWFsdGgSJQoOY3VycmVudF9hdHRhY2sY'
    'CiABKAVSDWN1cnJlbnRBdHRhY2sSHQoKbWF4X2F0dGFjaxgLIAEoBVIJbWF4QXR0YWNrEicKD2'
    'N1cnJlbnRfZGVmZW5zZRgMIAEoBVIOY3VycmVudERlZmVuc2USHwoLbWF4X2RlZmVuc2UYDSAB'
    'KAVSCm1heERlZmVuc2USIwoNY3VycmVudF9zcGVlZBgOIAEoBVIMY3VycmVudFNwZWVkEhsKCW'
    '1heF9zcGVlZBgPIAEoBVIIbWF4U3BlZWQSMQoUY3VycmVudF9pbnRlbGxpZ2VuY2UYECABKAVS'
    'E2N1cnJlbnRJbnRlbGxpZ2VuY2USKQoQbWF4X2ludGVsbGlnZW5jZRgRIAEoBVIPbWF4SW50ZW'
    'xsaWdlbmNlEiMKDWN1cnJlbnRfbWFnaWMYEiABKAVSDGN1cnJlbnRNYWdpYxIbCgltYXhfbWFn'
    'aWMYEyABKAVSCG1heE1hZ2ljEjcKGGV4cGVyaWVuY2VfdG9fbmV4dF9sZXZlbBgUIAEoBVIVZX'
    'hwZXJpZW5jZVRvTmV4dExldmVs');
