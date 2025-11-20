// This is a generated file - do not edit.
//
// Generated from user.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'mnstr.pb.dart' as $0;
import 'wallet.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class User extends $pb.GeneratedMessage {
  factory User({
    $core.String? id,
    $core.String? displayName,
    $core.String? email,
    $core.String? phone,
    $core.int? experienceLevel,
    $core.int? experiencePoints,
    $core.int? experienceToNextLevel,
    $core.int? coins,
    $core.Iterable<$0.Mnstr>? mnstrs,
    $1.Wallet? wallet,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (displayName != null) result.displayName = displayName;
    if (email != null) result.email = email;
    if (phone != null) result.phone = phone;
    if (experienceLevel != null) result.experienceLevel = experienceLevel;
    if (experiencePoints != null) result.experiencePoints = experiencePoints;
    if (experienceToNextLevel != null)
      result.experienceToNextLevel = experienceToNextLevel;
    if (coins != null) result.coins = coins;
    if (mnstrs != null) result.mnstrs.addAll(mnstrs);
    if (wallet != null) result.wallet = wallet;
    return result;
  }

  User._();

  factory User.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory User.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'User',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'adventurers'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'phone')
    ..aI(5, _omitFieldNames ? '' : 'experienceLevel')
    ..aI(6, _omitFieldNames ? '' : 'experiencePoints')
    ..aI(7, _omitFieldNames ? '' : 'experienceToNextLevel')
    ..aI(8, _omitFieldNames ? '' : 'coins')
    ..pPM<$0.Mnstr>(9, _omitFieldNames ? '' : 'mnstrs',
        subBuilder: $0.Mnstr.create)
    ..aOM<$1.Wallet>(10, _omitFieldNames ? '' : 'wallet',
        subBuilder: $1.Wallet.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  @$core.override
  User createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get experienceLevel => $_getIZ(4);
  @$pb.TagNumber(5)
  set experienceLevel($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExperienceLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearExperienceLevel() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get experiencePoints => $_getIZ(5);
  @$pb.TagNumber(6)
  set experiencePoints($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasExperiencePoints() => $_has(5);
  @$pb.TagNumber(6)
  void clearExperiencePoints() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get experienceToNextLevel => $_getIZ(6);
  @$pb.TagNumber(7)
  set experienceToNextLevel($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasExperienceToNextLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearExperienceToNextLevel() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get coins => $_getIZ(7);
  @$pb.TagNumber(8)
  set coins($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCoins() => $_has(7);
  @$pb.TagNumber(8)
  void clearCoins() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$0.Mnstr> get mnstrs => $_getList(8);

  @$pb.TagNumber(10)
  $1.Wallet get wallet => $_getN(9);
  @$pb.TagNumber(10)
  set wallet($1.Wallet value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasWallet() => $_has(9);
  @$pb.TagNumber(10)
  void clearWallet() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.Wallet ensureWallet() => $_ensure(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
