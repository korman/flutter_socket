///
//  Generated code. Do not modify.
//  source: pb/gate/cs_logic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'global_define.pb.dart' as $0;

import 'cs_logic.pbenum.dart';

export 'cs_logic.pbenum.dart';

class RegisterReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gate_server'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pass')
    ..hasRequiredFields = false
  ;

  RegisterReq._() : super();
  factory RegisterReq({
    $core.String? name,
    $core.String? pass,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (pass != null) {
      _result.pass = pass;
    }
    return _result;
  }
  factory RegisterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterReq clone() => RegisterReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterReq copyWith(void Function(RegisterReq) updates) => super.copyWith((message) => updates(message as RegisterReq)) as RegisterReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterReq create() => RegisterReq._();
  RegisterReq createEmptyInstance() => create();
  static $pb.PbList<RegisterReq> createRepeated() => $pb.PbList<RegisterReq>();
  @$core.pragma('dart2js:noInline')
  static RegisterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterReq>(create);
  static RegisterReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pass => $_getSZ(1);
  @$pb.TagNumber(2)
  set pass($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPass() => $_has(1);
  @$pb.TagNumber(2)
  void clearPass() => clearField(2);
}

class RegisterReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gate_server'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..e<RegisterResult>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: RegisterResult.REG_SUCCEEDED, valueOf: RegisterResult.valueOf, enumValues: RegisterResult.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage', protoName: 'errorMessage')
    ..hasRequiredFields = false
  ;

  RegisterReply._() : super();
  factory RegisterReply({
    $core.String? token,
    RegisterResult? result,
    $core.String? errorMessage,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (result != null) {
      _result.result = result;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    return _result;
  }
  factory RegisterReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterReply clone() => RegisterReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterReply copyWith(void Function(RegisterReply) updates) => super.copyWith((message) => updates(message as RegisterReply)) as RegisterReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterReply create() => RegisterReply._();
  RegisterReply createEmptyInstance() => create();
  static $pb.PbList<RegisterReply> createRepeated() => $pb.PbList<RegisterReply>();
  @$core.pragma('dart2js:noInline')
  static RegisterReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterReply>(create);
  static RegisterReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  RegisterResult get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(RegisterResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => clearField(3);
}

class LockNodeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LockNodeReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gate_server'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOM<$0.Node>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockNode', protoName: 'lockNode', subBuilder: $0.Node.create)
    ..hasRequiredFields = false
  ;

  LockNodeReq._() : super();
  factory LockNodeReq({
    $core.String? token,
    $0.Node? lockNode,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (lockNode != null) {
      _result.lockNode = lockNode;
    }
    return _result;
  }
  factory LockNodeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LockNodeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LockNodeReq clone() => LockNodeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LockNodeReq copyWith(void Function(LockNodeReq) updates) => super.copyWith((message) => updates(message as LockNodeReq)) as LockNodeReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LockNodeReq create() => LockNodeReq._();
  LockNodeReq createEmptyInstance() => create();
  static $pb.PbList<LockNodeReq> createRepeated() => $pb.PbList<LockNodeReq>();
  @$core.pragma('dart2js:noInline')
  static LockNodeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LockNodeReq>(create);
  static LockNodeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $0.Node get lockNode => $_getN(1);
  @$pb.TagNumber(2)
  set lockNode($0.Node v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLockNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearLockNode() => clearField(2);
  @$pb.TagNumber(2)
  $0.Node ensureLockNode() => $_ensure(1);
}

class LockNodeReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LockNodeReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gate_server'), createEmptyInstance: create)
    ..aOM<$0.Node>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockedNode', protoName: 'lockedNode', subBuilder: $0.Node.create)
    ..e<LockResult>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: LockResult.LOCK_SUCCEEDED, valueOf: LockResult.valueOf, enumValues: LockResult.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage', protoName: 'errorMessage')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  LockNodeReply._() : super();
  factory LockNodeReply({
    $0.Node? lockedNode,
    LockResult? result,
    $core.String? errorMessage,
    $core.String? token,
  }) {
    final _result = create();
    if (lockedNode != null) {
      _result.lockedNode = lockedNode;
    }
    if (result != null) {
      _result.result = result;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory LockNodeReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LockNodeReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LockNodeReply clone() => LockNodeReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LockNodeReply copyWith(void Function(LockNodeReply) updates) => super.copyWith((message) => updates(message as LockNodeReply)) as LockNodeReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LockNodeReply create() => LockNodeReply._();
  LockNodeReply createEmptyInstance() => create();
  static $pb.PbList<LockNodeReply> createRepeated() => $pb.PbList<LockNodeReply>();
  @$core.pragma('dart2js:noInline')
  static LockNodeReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LockNodeReply>(create);
  static LockNodeReply? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Node get lockedNode => $_getN(0);
  @$pb.TagNumber(1)
  set lockedNode($0.Node v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLockedNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearLockedNode() => clearField(1);
  @$pb.TagNumber(1)
  $0.Node ensureLockedNode() => $_ensure(0);

  @$pb.TagNumber(2)
  LockResult get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(LockResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);
}

class InputTextReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InputTextReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gate_server'), createEmptyInstance: create)
    ..aOM<$0.Node>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputNode', protoName: 'inputNode', subBuilder: $0.Node.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  InputTextReq._() : super();
  factory InputTextReq({
    $0.Node? inputNode,
    $core.String? token,
  }) {
    final _result = create();
    if (inputNode != null) {
      _result.inputNode = inputNode;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory InputTextReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InputTextReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InputTextReq clone() => InputTextReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InputTextReq copyWith(void Function(InputTextReq) updates) => super.copyWith((message) => updates(message as InputTextReq)) as InputTextReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InputTextReq create() => InputTextReq._();
  InputTextReq createEmptyInstance() => create();
  static $pb.PbList<InputTextReq> createRepeated() => $pb.PbList<InputTextReq>();
  @$core.pragma('dart2js:noInline')
  static InputTextReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InputTextReq>(create);
  static InputTextReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Node get inputNode => $_getN(0);
  @$pb.TagNumber(1)
  set inputNode($0.Node v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInputNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearInputNode() => clearField(1);
  @$pb.TagNumber(1)
  $0.Node ensureInputNode() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class InputTextReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InputTextReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gate_server'), createEmptyInstance: create)
    ..aOM<$0.Node>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputedNode', protoName: 'inputedNode', subBuilder: $0.Node.create)
    ..e<LockResult>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: LockResult.LOCK_SUCCEEDED, valueOf: LockResult.valueOf, enumValues: LockResult.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage', protoName: 'errorMessage')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  InputTextReply._() : super();
  factory InputTextReply({
    $0.Node? inputedNode,
    LockResult? result,
    $core.String? errorMessage,
    $core.String? token,
  }) {
    final _result = create();
    if (inputedNode != null) {
      _result.inputedNode = inputedNode;
    }
    if (result != null) {
      _result.result = result;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory InputTextReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InputTextReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InputTextReply clone() => InputTextReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InputTextReply copyWith(void Function(InputTextReply) updates) => super.copyWith((message) => updates(message as InputTextReply)) as InputTextReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InputTextReply create() => InputTextReply._();
  InputTextReply createEmptyInstance() => create();
  static $pb.PbList<InputTextReply> createRepeated() => $pb.PbList<InputTextReply>();
  @$core.pragma('dart2js:noInline')
  static InputTextReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InputTextReply>(create);
  static InputTextReply? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Node get inputedNode => $_getN(0);
  @$pb.TagNumber(1)
  set inputedNode($0.Node v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInputedNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearInputedNode() => clearField(1);
  @$pb.TagNumber(1)
  $0.Node ensureInputedNode() => $_ensure(0);

  @$pb.TagNumber(2)
  LockResult get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(LockResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);
}

