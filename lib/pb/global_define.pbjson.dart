///
//  Generated code. Do not modify.
//  source: pb/global_define.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use lockStatusDescriptor instead')
const LockStatus$json = const {
  '1': 'LockStatus',
  '2': const [
    const {'1': 'COMMON_NODE', '2': 0},
    const {'1': 'LOCKED_NODE', '2': 1},
  ],
};

/// Descriptor for `LockStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List lockStatusDescriptor = $convert.base64Decode('CgpMb2NrU3RhdHVzEg8KC0NPTU1PTl9OT0RFEAASDwoLTE9DS0VEX05PREUQAQ==');
@$core.Deprecated('Use nodeDescriptor instead')
const Node$json = const {
  '1': 'Node',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    const {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'state', '3': 4, '4': 1, '5': 14, '6': '.server.LockStatus', '10': 'state'},
  ],
};

/// Descriptor for `Node`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDescriptor = $convert.base64Decode('CgROb2RlEgwKAXgYASABKAVSAXgSDAoBeRgCIAEoBVIBeRISCgR0ZXh0GAMgASgJUgR0ZXh0EigKBXN0YXRlGAQgASgOMhIuc2VydmVyLkxvY2tTdGF0dXNSBXN0YXRl');
@$core.Deprecated('Use mapInfoDescriptor instead')
const MapInfo$json = const {
  '1': 'MapInfo',
  '2': const [
    const {'1': 'width', '3': 1, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 2, '4': 1, '5': 5, '10': 'height'},
  ],
};

/// Descriptor for `MapInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapInfoDescriptor = $convert.base64Decode('CgdNYXBJbmZvEhQKBXdpZHRoGAEgASgFUgV3aWR0aBIWCgZoZWlnaHQYAiABKAVSBmhlaWdodA==');
