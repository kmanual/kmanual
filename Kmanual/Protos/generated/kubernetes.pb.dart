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

class GetKServiceListReuqest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetKServiceListReuqest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'namespace')
    ..hasRequiredFields = false
  ;

  GetKServiceListReuqest._() : super();
  factory GetKServiceListReuqest({
    $core.String? namespace,
  }) {
    final _result = create();
    if (namespace != null) {
      _result.namespace = namespace;
    }
    return _result;
  }
  factory GetKServiceListReuqest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKServiceListReuqest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKServiceListReuqest clone() => GetKServiceListReuqest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKServiceListReuqest copyWith(void Function(GetKServiceListReuqest) updates) => super.copyWith((message) => updates(message as GetKServiceListReuqest)) as GetKServiceListReuqest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetKServiceListReuqest create() => GetKServiceListReuqest._();
  GetKServiceListReuqest createEmptyInstance() => create();
  static $pb.PbList<GetKServiceListReuqest> createRepeated() => $pb.PbList<GetKServiceListReuqest>();
  @$core.pragma('dart2js:noInline')
  static GetKServiceListReuqest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKServiceListReuqest>(create);
  static GetKServiceListReuqest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get namespace => $_getSZ(0);
  @$pb.TagNumber(1)
  set namespace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamespace() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespace() => clearField(1);
}

class GetKServiceListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetKServiceListResponse', createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services')
    ..hasRequiredFields = false
  ;

  GetKServiceListResponse._() : super();
  factory GetKServiceListResponse({
    $core.Iterable<$core.String>? services,
  }) {
    final _result = create();
    if (services != null) {
      _result.services.addAll(services);
    }
    return _result;
  }
  factory GetKServiceListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKServiceListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKServiceListResponse clone() => GetKServiceListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKServiceListResponse copyWith(void Function(GetKServiceListResponse) updates) => super.copyWith((message) => updates(message as GetKServiceListResponse)) as GetKServiceListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetKServiceListResponse create() => GetKServiceListResponse._();
  GetKServiceListResponse createEmptyInstance() => create();
  static $pb.PbList<GetKServiceListResponse> createRepeated() => $pb.PbList<GetKServiceListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetKServiceListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKServiceListResponse>(create);
  static GetKServiceListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get services => $_getList(0);
}

