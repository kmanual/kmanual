///
//  Generated code. Do not modify.
//  source: kubernetes.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetNamespaceListReuqest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNamespaceListReuqest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNamespaceListReuqest._() : super();
  factory GetNamespaceListReuqest() => create();
  factory GetNamespaceListReuqest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNamespaceListReuqest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNamespaceListReuqest clone() => GetNamespaceListReuqest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNamespaceListReuqest copyWith(void Function(GetNamespaceListReuqest) updates) => super.copyWith((message) => updates(message as GetNamespaceListReuqest)) as GetNamespaceListReuqest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNamespaceListReuqest create() => GetNamespaceListReuqest._();
  GetNamespaceListReuqest createEmptyInstance() => create();
  static $pb.PbList<GetNamespaceListReuqest> createRepeated() => $pb.PbList<GetNamespaceListReuqest>();
  @$core.pragma('dart2js:noInline')
  static GetNamespaceListReuqest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNamespaceListReuqest>(create);
  static GetNamespaceListReuqest? _defaultInstance;
}

class GetNamespaceListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNamespaceListResponse', createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'namespaces')
    ..hasRequiredFields = false
  ;

  GetNamespaceListResponse._() : super();
  factory GetNamespaceListResponse({
    $core.Iterable<$core.String>? namespaces,
  }) {
    final _result = create();
    if (namespaces != null) {
      _result.namespaces.addAll(namespaces);
    }
    return _result;
  }
  factory GetNamespaceListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNamespaceListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNamespaceListResponse clone() => GetNamespaceListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNamespaceListResponse copyWith(void Function(GetNamespaceListResponse) updates) => super.copyWith((message) => updates(message as GetNamespaceListResponse)) as GetNamespaceListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNamespaceListResponse create() => GetNamespaceListResponse._();
  GetNamespaceListResponse createEmptyInstance() => create();
  static $pb.PbList<GetNamespaceListResponse> createRepeated() => $pb.PbList<GetNamespaceListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNamespaceListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNamespaceListResponse>(create);
  static GetNamespaceListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get namespaces => $_getList(0);
}

