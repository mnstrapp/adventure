// This is a generated file - do not edit.
//
// Generated from session.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'phone', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'phone', '17': true},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    {'1': 'display_name', '3': 4, '4': 1, '5': 9, '10': 'displayName'},
  ],
  '8': [
    {'1': '_phone'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhkKBXBob25lGAIgASgJSA'
    'BSBXBob25liAEBEhoKCHBhc3N3b3JkGAMgASgJUghwYXNzd29yZBIhCgxkaXNwbGF5X25hbWUY'
    'BCABKAlSC2Rpc3BsYXlOYW1lQggKBl9waG9uZQ==');

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = {
  '1': 'RegisterResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode(
    'ChBSZWdpc3RlclJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use sessionDescriptor instead')
const Session$json = {
  '1': 'Session',
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
    {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    {'1': 'expires_at', '3': 4, '4': 1, '5': 9, '10': 'expiresAt'},
  ],
};

/// Descriptor for `Session`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDescriptor = $convert.base64Decode(
    'CgdTZXNzaW9uEg4KAmlkGAEgASgJUgJpZBIlCgR1c2VyGAIgASgLMhEuYWR2ZW50dXJlcnMuVX'
    'NlclIEdXNlchIUCgV0b2tlbhgDIAEoCVIFdG9rZW4SHQoKZXhwaXJlc19hdBgEIAEoCVIJZXhw'
    'aXJlc0F0');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUg'
    'hwYXNzd29yZA==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {
      '1': 'session',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.adventurers.Session',
      '10': 'session'
    },
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEi4KB3Nlc3Npb24YASABKAsyFC5hZHZlbnR1cmVycy5TZXNzaW9uUg'
    'dzZXNzaW9u');

@$core.Deprecated('Use logoutRequestDescriptor instead')
const LogoutRequest$json = {
  '1': 'LogoutRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `LogoutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutRequestDescriptor = $convert
    .base64Decode('Cg1Mb2dvdXRSZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbg==');

@$core.Deprecated('Use logoutResponseDescriptor instead')
const LogoutResponse$json = {
  '1': 'LogoutResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `LogoutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutResponseDescriptor = $convert
    .base64Decode('Cg5Mb2dvdXRSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use forgotPasswordRequestDescriptor instead')
const ForgotPasswordRequest$json = {
  '1': 'ForgotPasswordRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `ForgotPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotPasswordRequestDescriptor =
    $convert.base64Decode(
        'ChVGb3Jnb3RQYXNzd29yZFJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWls');

@$core.Deprecated('Use forgotPasswordResponseDescriptor instead')
const ForgotPasswordResponse$json = {
  '1': 'ForgotPasswordResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `ForgotPasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotPasswordResponseDescriptor =
    $convert.base64Decode(
        'ChZGb3Jnb3RQYXNzd29yZFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use resetPasswordRequestDescriptor instead')
const ResetPasswordRequest$json = {
  '1': 'ResetPasswordRequest',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `ResetPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordRequestDescriptor = $convert.base64Decode(
    'ChRSZXNldFBhc3N3b3JkUmVxdWVzdBISCgRjb2RlGAEgASgJUgRjb2RlEhoKCHBhc3N3b3JkGA'
    'MgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use resetPasswordResponseDescriptor instead')
const ResetPasswordResponse$json = {
  '1': 'ResetPasswordResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `ResetPasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordResponseDescriptor =
    $convert.base64Decode(
        'ChVSZXNldFBhc3N3b3JkUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use verifyEmailRequestDescriptor instead')
const VerifyEmailRequest$json = {
  '1': 'VerifyEmailRequest',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `VerifyEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyEmailRequestDescriptor = $convert
    .base64Decode('ChJWZXJpZnlFbWFpbFJlcXVlc3QSEgoEY29kZRgBIAEoCVIEY29kZQ==');

@$core.Deprecated('Use verifyEmailResponseDescriptor instead')
const VerifyEmailResponse$json = {
  '1': 'VerifyEmailResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `VerifyEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyEmailResponseDescriptor =
    $convert.base64Decode(
        'ChNWZXJpZnlFbWFpbFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use verifyPhoneRequestDescriptor instead')
const VerifyPhoneRequest$json = {
  '1': 'VerifyPhoneRequest',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `VerifyPhoneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyPhoneRequestDescriptor = $convert
    .base64Decode('ChJWZXJpZnlQaG9uZVJlcXVlc3QSEgoEY29kZRgBIAEoCVIEY29kZQ==');
