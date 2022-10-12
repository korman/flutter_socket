///
//  Generated code. Do not modify.
//  source: pb/cs_logic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use registerResultDescriptor instead')
const RegisterResult$json = const {
  '1': 'RegisterResult',
  '2': const [
    const {'1': 'REG_SUCCEEDED', '2': 0},
    const {'1': 'REG_DUPLICATE', '2': 1},
  ],
};

/// Descriptor for `RegisterResult`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List registerResultDescriptor = $convert.base64Decode('Cg5SZWdpc3RlclJlc3VsdBIRCg1SRUdfU1VDQ0VFREVEEAASEQoNUkVHX0RVUExJQ0FURRAB');
@$core.Deprecated('Use lockResultDescriptor instead')
const LockResult$json = const {
  '1': 'LockResult',
  '2': const [
    const {'1': 'LOCK_SUCCEEDED', '2': 0},
    const {'1': 'LOCK_FAILED', '2': 1},
  ],
};

/// Descriptor for `LockResult`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List lockResultDescriptor = $convert.base64Decode('CgpMb2NrUmVzdWx0EhIKDkxPQ0tfU1VDQ0VFREVEEAASDwoLTE9DS19GQUlMRUQQAQ==');
@$core.Deprecated('Use registerReqDescriptor instead')
const RegisterReq$json = const {
  '1': 'RegisterReq',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'pass', '3': 2, '4': 1, '5': 9, '10': 'pass'},
  ],
};

/// Descriptor for `RegisterReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerReqDescriptor = $convert.base64Decode('CgtSZWdpc3RlclJlcRISCgRuYW1lGAEgASgJUgRuYW1lEhIKBHBhc3MYAiABKAlSBHBhc3M=');
@$core.Deprecated('Use registerReplyDescriptor instead')
const RegisterReply$json = const {
  '1': 'RegisterReply',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'result', '3': 2, '4': 1, '5': 14, '6': '.server.RegisterResult', '10': 'result'},
    const {'1': 'errorMessage', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
};

/// Descriptor for `RegisterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerReplyDescriptor = $convert.base64Decode('Cg1SZWdpc3RlclJlcGx5EhQKBXRva2VuGAEgASgJUgV0b2tlbhIuCgZyZXN1bHQYAiABKA4yFi5zZXJ2ZXIuUmVnaXN0ZXJSZXN1bHRSBnJlc3VsdBIiCgxlcnJvck1lc3NhZ2UYAyABKAlSDGVycm9yTWVzc2FnZQ==');
@$core.Deprecated('Use lockNodeReqDescriptor instead')
const LockNodeReq$json = const {
  '1': 'LockNodeReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'lockNode', '3': 2, '4': 1, '5': 11, '6': '.server.Node', '10': 'lockNode'},
  ],
};

/// Descriptor for `LockNodeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockNodeReqDescriptor = $convert.base64Decode('CgtMb2NrTm9kZVJlcRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SKAoIbG9ja05vZGUYAiABKAsyDC5zZXJ2ZXIuTm9kZVIIbG9ja05vZGU=');
@$core.Deprecated('Use lockNodeReplyDescriptor instead')
const LockNodeReply$json = const {
  '1': 'LockNodeReply',
  '2': const [
    const {'1': 'lockedNode', '3': 1, '4': 1, '5': 11, '6': '.server.Node', '10': 'lockedNode'},
    const {'1': 'result', '3': 2, '4': 1, '5': 14, '6': '.server.LockResult', '10': 'result'},
    const {'1': 'errorMessage', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    const {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `LockNodeReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockNodeReplyDescriptor = $convert.base64Decode('Cg1Mb2NrTm9kZVJlcGx5EiwKCmxvY2tlZE5vZGUYASABKAsyDC5zZXJ2ZXIuTm9kZVIKbG9ja2VkTm9kZRIqCgZyZXN1bHQYAiABKA4yEi5zZXJ2ZXIuTG9ja1Jlc3VsdFIGcmVzdWx0EiIKDGVycm9yTWVzc2FnZRgDIAEoCVIMZXJyb3JNZXNzYWdlEhQKBXRva2VuGAQgASgJUgV0b2tlbg==');
@$core.Deprecated('Use inputTextReqDescriptor instead')
const InputTextReq$json = const {
  '1': 'InputTextReq',
  '2': const [
    const {'1': 'inputNode', '3': 1, '4': 1, '5': 11, '6': '.server.Node', '10': 'inputNode'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `InputTextReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputTextReqDescriptor = $convert.base64Decode('CgxJbnB1dFRleHRSZXESKgoJaW5wdXROb2RlGAEgASgLMgwuc2VydmVyLk5vZGVSCWlucHV0Tm9kZRIUCgV0b2tlbhgCIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use inputTextReplyDescriptor instead')
const InputTextReply$json = const {
  '1': 'InputTextReply',
  '2': const [
    const {'1': 'inputedNode', '3': 1, '4': 1, '5': 11, '6': '.server.Node', '10': 'inputedNode'},
    const {'1': 'result', '3': 2, '4': 1, '5': 14, '6': '.server.LockResult', '10': 'result'},
    const {'1': 'errorMessage', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    const {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `InputTextReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputTextReplyDescriptor = $convert.base64Decode('Cg5JbnB1dFRleHRSZXBseRIuCgtpbnB1dGVkTm9kZRgBIAEoCzIMLnNlcnZlci5Ob2RlUgtpbnB1dGVkTm9kZRIqCgZyZXN1bHQYAiABKA4yEi5zZXJ2ZXIuTG9ja1Jlc3VsdFIGcmVzdWx0EiIKDGVycm9yTWVzc2FnZRgDIAEoCVIMZXJyb3JNZXNzYWdlEhQKBXRva2VuGAQgASgJUgV0b2tlbg==');
