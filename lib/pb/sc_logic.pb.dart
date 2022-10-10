///
//  Generated code. Do not modify.
//  source: pb/sc_logic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'global_define.pb.dart' as $0;

class InitMapInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitMapInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server'), createEmptyInstance: create)
    ..aOM<$0.MapInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info', subBuilder: $0.MapInfo.create)
    ..hasRequiredFields = false
  ;

  InitMapInfo._() : super();
  factory InitMapInfo({
    $0.MapInfo? info,
  }) {
    final _result = create();
    if (info != null) {
      _result.info = info;
    }
    return _result;
  }
  factory InitMapInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitMapInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitMapInfo clone() => InitMapInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitMapInfo copyWith(void Function(InitMapInfo) updates) => super.copyWith((message) => updates(message as InitMapInfo)) as InitMapInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitMapInfo create() => InitMapInfo._();
  InitMapInfo createEmptyInstance() => create();
  static $pb.PbList<InitMapInfo> createRepeated() => $pb.PbList<InitMapInfo>();
  @$core.pragma('dart2js:noInline')
  static InitMapInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitMapInfo>(create);
  static InitMapInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.MapInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info($0.MapInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  $0.MapInfo ensureInfo() => $_ensure(0);
}

class UpdateNodes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateNodes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server'), createEmptyInstance: create)
    ..pc<$0.Node>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockNodes', $pb.PbFieldType.PM, protoName: 'lockNodes', subBuilder: $0.Node.create)
    ..hasRequiredFields = false
  ;

  UpdateNodes._() : super();
  factory UpdateNodes({
    $core.Iterable<$0.Node>? lockNodes,
  }) {
    final _result = create();
    if (lockNodes != null) {
      _result.lockNodes.addAll(lockNodes);
    }
    return _result;
  }
  factory UpdateNodes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNodes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateNodes clone() => UpdateNodes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateNodes copyWith(void Function(UpdateNodes) updates) => super.copyWith((message) => updates(message as UpdateNodes)) as UpdateNodes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateNodes create() => UpdateNodes._();
  UpdateNodes createEmptyInstance() => create();
  static $pb.PbList<UpdateNodes> createRepeated() => $pb.PbList<UpdateNodes>();
  @$core.pragma('dart2js:noInline')
  static UpdateNodes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNodes>(create);
  static UpdateNodes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.Node> get lockNodes => $_getList(0);
}

