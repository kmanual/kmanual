///
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createReuqestDescriptor instead')
const CreateReuqest$json = const {
  '1': 'CreateReuqest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'image', '3': 2, '4': 1, '5': 9, '10': 'image'},
    const {'1': 'tag', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'tag', '17': true},
    const {'1': 'service', '3': 4, '4': 1, '5': 9, '10': 'service'},
    const {'1': 'namespace', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'namespace', '17': true},
  ],
  '8': const [
    const {'1': '_tag'},
    const {'1': '_namespace'},
  ],
};

/// Descriptor for `CreateReuqest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReuqestDescriptor = $convert.base64Decode('Cg1DcmVhdGVSZXVxZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSFAoFaW1hZ2UYAiABKAlSBWltYWdlEhUKA3RhZxgDIAEoCUgAUgN0YWeIAQESGAoHc2VydmljZRgEIAEoCVIHc2VydmljZRIhCgluYW1lc3BhY2UYBSABKAlIAVIJbmFtZXNwYWNliAEBQgYKBF90YWdCDAoKX25hbWVzcGFjZQ==');
@$core.Deprecated('Use createResponseDescriptor instead')
const CreateResponse$json = const {
  '1': 'CreateResponse',
  '2': const [
    const {'1': 'project', '3': 1, '4': 1, '5': 11, '6': '.Project', '10': 'project'},
  ],
};

/// Descriptor for `CreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResponseDescriptor = $convert.base64Decode('Cg5DcmVhdGVSZXNwb25zZRIiCgdwcm9qZWN0GAEgASgLMgguUHJvamVjdFIHcHJvamVjdA==');
@$core.Deprecated('Use getListRequestDescriptor instead')
const GetListRequest$json = const {
  '1': 'GetListRequest',
};

/// Descriptor for `GetListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getListRequestDescriptor = $convert.base64Decode('Cg5HZXRMaXN0UmVxdWVzdA==');
@$core.Deprecated('Use getListResponseDescriptor instead')
const GetListResponse$json = const {
  '1': 'GetListResponse',
  '2': const [
    const {'1': 'projects', '3': 1, '4': 3, '5': 11, '6': '.Project', '10': 'projects'},
  ],
};

/// Descriptor for `GetListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getListResponseDescriptor = $convert.base64Decode('Cg9HZXRMaXN0UmVzcG9uc2USJAoIcHJvamVjdHMYASADKAsyCC5Qcm9qZWN0Ughwcm9qZWN0cw==');
@$core.Deprecated('Use projectDescriptor instead')
const Project$json = const {
  '1': 'Project',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    const {'1': 'tag', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'tag', '17': true},
    const {'1': 'service', '3': 5, '4': 1, '5': 9, '10': 'service'},
    const {'1': 'namespace', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'namespace', '17': true},
  ],
  '8': const [
    const {'1': '_tag'},
    const {'1': '_namespace'},
  ],
};

/// Descriptor for `Project`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectDescriptor = $convert.base64Decode('CgdQcm9qZWN0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWltYWdlGAMgASgJUgVpbWFnZRIVCgN0YWcYBCABKAlIAFIDdGFniAEBEhgKB3NlcnZpY2UYBSABKAlSB3NlcnZpY2USIQoJbmFtZXNwYWNlGAYgASgJSAFSCW5hbWVzcGFjZYgBAUIGCgRfdGFnQgwKCl9uYW1lc3BhY2U=');
