///
//  Generated code. Do not modify.
//  source: pb/gate/cs_logic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RegisterResult extends $pb.ProtobufEnum {
  static const RegisterResult REG_SUCCEEDED = RegisterResult._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REG_SUCCEEDED');
  static const RegisterResult REG_DUPLICATE = RegisterResult._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REG_DUPLICATE');

  static const $core.List<RegisterResult> values = <RegisterResult> [
    REG_SUCCEEDED,
    REG_DUPLICATE,
  ];

  static final $core.Map<$core.int, RegisterResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RegisterResult? valueOf($core.int value) => _byValue[value];

  const RegisterResult._($core.int v, $core.String n) : super(v, n);
}

class LockResult extends $pb.ProtobufEnum {
  static const LockResult LOCK_SUCCEEDED = LockResult._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOCK_SUCCEEDED');
  static const LockResult LOCK_FAILED = LockResult._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOCK_FAILED');

  static const $core.List<LockResult> values = <LockResult> [
    LOCK_SUCCEEDED,
    LOCK_FAILED,
  ];

  static final $core.Map<$core.int, LockResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LockResult? valueOf($core.int value) => _byValue[value];

  const LockResult._($core.int v, $core.String n) : super(v, n);
}

