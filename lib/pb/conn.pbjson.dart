///
//  Generated code. Do not modify.
//  source: pb/conn.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sayReqDescriptor instead')
const SayReq$json = const {
  '1': 'SayReq',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `SayReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sayReqDescriptor =
    $convert.base64Decode('CgZTYXlSZXESEgoEdGV4dBgBIAEoCVIEdGV4dA==');
@$core.Deprecated('Use sayReplyDescriptor instead')
const SayReply$json = const {
  '1': 'SayReply',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `SayReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sayReplyDescriptor =
    $convert.base64Decode('CghTYXlSZXBseRISCgR0ZXh0GAEgASgJUgR0ZXh0');
