///
//  Generated code. Do not modify.
//  source: repository.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getImageListReuqestDescriptor instead')
const GetImageListReuqest$json = const {
  '1': 'GetImageListReuqest',
  '2': const [
    const {'1': 'all', '3': 1, '4': 1, '5': 8, '10': 'all'},
  ],
};

/// Descriptor for `GetImageListReuqest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getImageListReuqestDescriptor = $convert.base64Decode('ChNHZXRJbWFnZUxpc3RSZXVxZXN0EhAKA2FsbBgBIAEoCFIDYWxs');
@$core.Deprecated('Use getImageListResponseDescriptor instead')
const GetImageListResponse$json = const {
  '1': 'GetImageListResponse',
  '2': const [
    const {'1': 'repositories', '3': 1, '4': 3, '5': 9, '10': 'repositories'},
  ],
};

/// Descriptor for `GetImageListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getImageListResponseDescriptor = $convert.base64Decode('ChRHZXRJbWFnZUxpc3RSZXNwb25zZRIiCgxyZXBvc2l0b3JpZXMYASADKAlSDHJlcG9zaXRvcmllcw==');
@$core.Deprecated('Use getTagListReuqestDescriptor instead')
const GetTagListReuqest$json = const {
  '1': 'GetTagListReuqest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetTagListReuqest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTagListReuqestDescriptor = $convert.base64Decode('ChFHZXRUYWdMaXN0UmV1cWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use getTagListResponseDescriptor instead')
const GetTagListResponse$json = const {
  '1': 'GetTagListResponse',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 9, '10': 'tags'},
  ],
};

/// Descriptor for `GetTagListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTagListResponseDescriptor = $convert.base64Decode('ChJHZXRUYWdMaXN0UmVzcG9uc2USEgoEdGFncxgBIAMoCVIEdGFncw==');
@$core.Deprecated('Use getManifestReuqestDescriptor instead')
const GetManifestReuqest$json = const {
  '1': 'GetManifestReuqest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'tag', '3': 2, '4': 1, '5': 9, '10': 'tag'},
  ],
};

/// Descriptor for `GetManifestReuqest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getManifestReuqestDescriptor = $convert.base64Decode('ChJHZXRNYW5pZmVzdFJldXFlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIQCgN0YWcYAiABKAlSA3RhZw==');
@$core.Deprecated('Use getManifestResponseDescriptor instead')
const GetManifestResponse$json = const {
  '1': 'GetManifestResponse',
  '2': const [
    const {'1': 'schemaVersion', '3': 1, '4': 1, '5': 5, '10': 'schemaVersion'},
    const {'1': 'mediaType', '3': 2, '4': 1, '5': 9, '10': 'mediaType'},
    const {'1': 'config', '3': 3, '4': 1, '5': 11, '6': '.Config', '10': 'config'},
    const {'1': 'layers', '3': 4, '4': 3, '5': 11, '6': '.Layer', '10': 'layers'},
  ],
};

/// Descriptor for `GetManifestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getManifestResponseDescriptor = $convert.base64Decode('ChNHZXRNYW5pZmVzdFJlc3BvbnNlEiQKDXNjaGVtYVZlcnNpb24YASABKAVSDXNjaGVtYVZlcnNpb24SHAoJbWVkaWFUeXBlGAIgASgJUgltZWRpYVR5cGUSHwoGY29uZmlnGAMgASgLMgcuQ29uZmlnUgZjb25maWcSHgoGbGF5ZXJzGAQgAygLMgYuTGF5ZXJSBmxheWVycw==');
@$core.Deprecated('Use configDescriptor instead')
const Config$json = const {
  '1': 'Config',
  '2': const [
    const {'1': 'mediaType', '3': 1, '4': 1, '5': 9, '10': 'mediaType'},
    const {'1': 'size', '3': 2, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'digest', '3': 3, '4': 1, '5': 9, '10': 'digest'},
  ],
};

/// Descriptor for `Config`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configDescriptor = $convert.base64Decode('CgZDb25maWcSHAoJbWVkaWFUeXBlGAEgASgJUgltZWRpYVR5cGUSEgoEc2l6ZRgCIAEoBVIEc2l6ZRIWCgZkaWdlc3QYAyABKAlSBmRpZ2VzdA==');
@$core.Deprecated('Use layerDescriptor instead')
const Layer$json = const {
  '1': 'Layer',
  '2': const [
    const {'1': 'mediaType', '3': 1, '4': 1, '5': 9, '10': 'mediaType'},
    const {'1': 'size', '3': 2, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'digest', '3': 3, '4': 1, '5': 9, '10': 'digest'},
  ],
};

/// Descriptor for `Layer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerDescriptor = $convert.base64Decode('CgVMYXllchIcCgltZWRpYVR5cGUYASABKAlSCW1lZGlhVHlwZRISCgRzaXplGAIgASgFUgRzaXplEhYKBmRpZ2VzdBgDIAEoCVIGZGlnZXN0');
