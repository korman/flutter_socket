///
//  Generated code. Do not modify.
//  source: pb/sc_logic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'global_define.pb.dart' as $0;

class OtherLockNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OtherLockNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server'), createEmptyInstance: create)
    ..aOM<$0.Node>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockNode', protoName: 'lockNode', subBuilder: $0.Node.create)
    ..hasRequiredFields = false
  ;

  OtherLockNode._() : super();
  factory OtherLockNode({
    $0.Node? lockNode,
  }) {
    final _result = create();
    if (lockNode != null) {
      _result.lockNode = lockNode;
    }
    return _result;
  }
  factory OtherLockNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtherLockNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OtherLockNode clone() => OtherLockNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OtherLockNode copyWith(void Function(OtherLockNode) updates) => super.copyWith((message) => updates(message as OtherLockNode)) as OtherLockNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OtherLockNode create() => OtherLockNode._();
  OtherLockNode createEmptyInstance() => create();
  static $pb.PbList<OtherLockNode> createRepeated() => $pb.PbList<OtherLockNode>();
  @$core.pragma('dart2js:noInline')
  static OtherLockNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtherLockNode>(create);
  static OtherLockNode? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Node get lockNode => $_getN(0);
  @$pb.TagNumber(1)
  set lockNode($0.Node v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLockNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearLockNode() => clearField(1);
  @$pb.TagNumber(1)
  $0.Node ensureLockNode() => $_ensure(0);
}

class OtherInputText extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OtherInputText', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server'), createEmptyInstance: create)
    ..aOM<$0.Node>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputNode', protoName: 'inputNode', subBuilder: $0.Node.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputText', protoName: 'inputText')
    ..hasRequiredFields = false
  ;

  OtherInputText._() : super();
  factory OtherInputText({
    $0.Node? inputNode,
    $core.String? inputText,
  }) {
    final _result = create();
    if (inputNode != null) {
      _result.inputNode = inputNode;
    }
    if (inputText != null) {
      _result.inputText = inputText;
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
  $core.String get inputText => $_getSZ(1);
  @$pb.TagNumber(2)
  set inputText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInputText() => $_has(1);
  @$pb.TagNumber(2)
  void clearInputText() => clearField(2);
}

