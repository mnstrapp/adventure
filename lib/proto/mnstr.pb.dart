// This is a generated file - do not edit.
//
// Generated from mnstr.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Mnstr extends $pb.GeneratedMessage {
  factory Mnstr({
    $core.String? id,
    $core.String? userId,
    $core.String? mnstrName,
    $core.String? mnstrDescription,
    $core.String? mnstrQrCode,
    $core.int? currentLevel,
    $core.int? currentExperience,
    $core.int? currentHealth,
    $core.int? maxHealth,
    $core.int? currentAttack,
    $core.int? maxAttack,
    $core.int? currentDefense,
    $core.int? maxDefense,
    $core.int? currentSpeed,
    $core.int? maxSpeed,
    $core.int? currentIntelligence,
    $core.int? maxIntelligence,
    $core.int? currentMagic,
    $core.int? maxMagic,
    $core.int? experienceToNextLevel,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (userId != null) result.userId = userId;
    if (mnstrName != null) result.mnstrName = mnstrName;
    if (mnstrDescription != null) result.mnstrDescription = mnstrDescription;
    if (mnstrQrCode != null) result.mnstrQrCode = mnstrQrCode;
    if (currentLevel != null) result.currentLevel = currentLevel;
    if (currentExperience != null) result.currentExperience = currentExperience;
    if (currentHealth != null) result.currentHealth = currentHealth;
    if (maxHealth != null) result.maxHealth = maxHealth;
    if (currentAttack != null) result.currentAttack = currentAttack;
    if (maxAttack != null) result.maxAttack = maxAttack;
    if (currentDefense != null) result.currentDefense = currentDefense;
    if (maxDefense != null) result.maxDefense = maxDefense;
    if (currentSpeed != null) result.currentSpeed = currentSpeed;
    if (maxSpeed != null) result.maxSpeed = maxSpeed;
    if (currentIntelligence != null)
      result.currentIntelligence = currentIntelligence;
    if (maxIntelligence != null) result.maxIntelligence = maxIntelligence;
    if (currentMagic != null) result.currentMagic = currentMagic;
    if (maxMagic != null) result.maxMagic = maxMagic;
    if (experienceToNextLevel != null)
      result.experienceToNextLevel = experienceToNextLevel;
    return result;
  }

  Mnstr._();

  factory Mnstr.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Mnstr.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Mnstr',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'adventurers'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'mnstrName')
    ..aOS(4, _omitFieldNames ? '' : 'mnstrDescription')
    ..aOS(5, _omitFieldNames ? '' : 'mnstrQrCode')
    ..aI(6, _omitFieldNames ? '' : 'currentLevel')
    ..aI(7, _omitFieldNames ? '' : 'currentExperience')
    ..aI(8, _omitFieldNames ? '' : 'currentHealth')
    ..aI(9, _omitFieldNames ? '' : 'maxHealth')
    ..aI(10, _omitFieldNames ? '' : 'currentAttack')
    ..aI(11, _omitFieldNames ? '' : 'maxAttack')
    ..aI(12, _omitFieldNames ? '' : 'currentDefense')
    ..aI(13, _omitFieldNames ? '' : 'maxDefense')
    ..aI(14, _omitFieldNames ? '' : 'currentSpeed')
    ..aI(15, _omitFieldNames ? '' : 'maxSpeed')
    ..aI(16, _omitFieldNames ? '' : 'currentIntelligence')
    ..aI(17, _omitFieldNames ? '' : 'maxIntelligence')
    ..aI(18, _omitFieldNames ? '' : 'currentMagic')
    ..aI(19, _omitFieldNames ? '' : 'maxMagic')
    ..aI(20, _omitFieldNames ? '' : 'experienceToNextLevel')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mnstr clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mnstr copyWith(void Function(Mnstr) updates) =>
      super.copyWith((message) => updates(message as Mnstr)) as Mnstr;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mnstr create() => Mnstr._();
  @$core.override
  Mnstr createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Mnstr getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mnstr>(create);
  static Mnstr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get mnstrName => $_getSZ(2);
  @$pb.TagNumber(3)
  set mnstrName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMnstrName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMnstrName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mnstrDescription => $_getSZ(3);
  @$pb.TagNumber(4)
  set mnstrDescription($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMnstrDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearMnstrDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get mnstrQrCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set mnstrQrCode($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMnstrQrCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearMnstrQrCode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get currentLevel => $_getIZ(5);
  @$pb.TagNumber(6)
  set currentLevel($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrentLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentLevel() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get currentExperience => $_getIZ(6);
  @$pb.TagNumber(7)
  set currentExperience($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCurrentExperience() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrentExperience() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get currentHealth => $_getIZ(7);
  @$pb.TagNumber(8)
  set currentHealth($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCurrentHealth() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurrentHealth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get maxHealth => $_getIZ(8);
  @$pb.TagNumber(9)
  set maxHealth($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMaxHealth() => $_has(8);
  @$pb.TagNumber(9)
  void clearMaxHealth() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get currentAttack => $_getIZ(9);
  @$pb.TagNumber(10)
  set currentAttack($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCurrentAttack() => $_has(9);
  @$pb.TagNumber(10)
  void clearCurrentAttack() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get maxAttack => $_getIZ(10);
  @$pb.TagNumber(11)
  set maxAttack($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMaxAttack() => $_has(10);
  @$pb.TagNumber(11)
  void clearMaxAttack() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get currentDefense => $_getIZ(11);
  @$pb.TagNumber(12)
  set currentDefense($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCurrentDefense() => $_has(11);
  @$pb.TagNumber(12)
  void clearCurrentDefense() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get maxDefense => $_getIZ(12);
  @$pb.TagNumber(13)
  set maxDefense($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasMaxDefense() => $_has(12);
  @$pb.TagNumber(13)
  void clearMaxDefense() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get currentSpeed => $_getIZ(13);
  @$pb.TagNumber(14)
  set currentSpeed($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCurrentSpeed() => $_has(13);
  @$pb.TagNumber(14)
  void clearCurrentSpeed() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get maxSpeed => $_getIZ(14);
  @$pb.TagNumber(15)
  set maxSpeed($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasMaxSpeed() => $_has(14);
  @$pb.TagNumber(15)
  void clearMaxSpeed() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get currentIntelligence => $_getIZ(15);
  @$pb.TagNumber(16)
  set currentIntelligence($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasCurrentIntelligence() => $_has(15);
  @$pb.TagNumber(16)
  void clearCurrentIntelligence() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get maxIntelligence => $_getIZ(16);
  @$pb.TagNumber(17)
  set maxIntelligence($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasMaxIntelligence() => $_has(16);
  @$pb.TagNumber(17)
  void clearMaxIntelligence() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get currentMagic => $_getIZ(17);
  @$pb.TagNumber(18)
  set currentMagic($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasCurrentMagic() => $_has(17);
  @$pb.TagNumber(18)
  void clearCurrentMagic() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get maxMagic => $_getIZ(18);
  @$pb.TagNumber(19)
  set maxMagic($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasMaxMagic() => $_has(18);
  @$pb.TagNumber(19)
  void clearMaxMagic() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get experienceToNextLevel => $_getIZ(19);
  @$pb.TagNumber(20)
  set experienceToNextLevel($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasExperienceToNextLevel() => $_has(19);
  @$pb.TagNumber(20)
  void clearExperienceToNextLevel() => $_clearField(20);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
