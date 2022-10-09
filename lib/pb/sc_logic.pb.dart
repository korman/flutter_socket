///
//  Generated code. Do not modify.
//  source: pb/sc_logic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'global_define.pb.dart' as $0;

class OtherInputText extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OtherInputText', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server'), createEmptyInstance: create)
    ..pc<$0.InputText>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputText', $pb.PbFieldType.PM, protoName: 'inputText', subBuilder: $0.InputText.create)
    ..hasRequiredFields = false
  ;

  OtherInputText._() : super();
  factory OtherInputText({
    $core.Iterable<$0.InputText>? inputText,
  }) {
    final _result = create();
    if (inputText != null) {
      _result.inputText.addAll(inputText);
    }
    return _result;
  }
  factory OtherInputText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtherInputText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OtherInputText clone() => OtherInputText()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OtherInputText copyWith(void Function(OtherInputText) updates) => super.copyWith((message) => updates(message as OtherInputText)) as OtherInputText; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OtherInputText create() => OtherInputText._();
  OtherInputText createEmptyInstance() => create();
  static $pb.PbList<OtherInputText> createRepeated() => $pb.PbList<OtherInputText>();
  @$core.pragma('dart2js:noInline')
  static OtherInputText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtherInputText>(create);
  static OtherInputText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.InputText> get inputText => $_getList(0);
}

class UpdateNodes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateNodes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server'), createEmptyInstance: create)
    ..aOM<$0.MapInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'map', subBuilder: $0.MapInfo.create)
    ..pc<$0.Node>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockNodes', $pb.PbFieldType.PM, protoName: 'lockNodes', subBuilder: $0.Node.create)
    ..hasRequiredFields = false
  ;

  UpdateNodes._() : super();
  factory UpdateNodes({
    $0.MapInfo? map,
    $core.Iterable<$0.Node>? lockNodes,
  }) {
    final _result = create();
    if (map != null) {
      _result.map = map;
    }
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
  $0.MapInfo get map => $_getN(0);
  @$pb.TagNumber(1)
  set map($0.MapInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMap() => $_has(0);
  @$pb.TagNumber(1)
  void clearMap() => clearField(1);
  @$pb.TagNumber(1)
  $0.MapInfo ensureMap() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$0.Node> get lockNodes => $_getList(1);
}

