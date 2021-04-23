///
//  Generated code. Do not modify.
//  source: repository.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetImageListReuqest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetImageListReuqest', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'all')
    ..hasRequiredFields = false
  ;

  GetImageListReuqest._() : super();
  factory GetImageListReuqest({
    $core.bool? all,
  }) {
    final _result = create();
    if (all != null) {
      _result.all = all;
    }
    return _result;
  }
  factory GetImageListReuqest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetImageListReuqest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetImageListReuqest clone() => GetImageListReuqest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetImageListReuqest copyWith(void Function(GetImageListReuqest) updates) => super.copyWith((message) => updates(message as GetImageListReuqest)) as GetImageListReuqest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetImageListReuqest create() => GetImageListReuqest._();
  GetImageListReuqest createEmptyInstance() => create();
  static $pb.PbList<GetImageListReuqest> createRepeated() => $pb.PbList<GetImageListReuqest>();
  @$core.pragma('dart2js:noInline')
  static GetImageListReuqest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetImageListReuqest>(create);
  static GetImageListReuqest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get all => $_getBF(0);
  @$pb.TagNumber(1)
  set all($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAll() => $_has(0);
  @$pb.TagNumber(1)
  void clearAll() => clearField(1);
}

class GetImageListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetImageListResponse', createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repositories')
    ..hasRequiredFields = false
  ;

  GetImageListResponse._() : super();
  factory GetImageListResponse({
    $core.Iterable<$core.String>? repositories,
  }) {
    final _result = create();
    if (repositories != null) {
      _result.repositories.addAll(repositories);
    }
    return _result;
  }
  factory GetImageListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetImageListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetImageListResponse clone() => GetImageListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetImageListResponse copyWith(void Function(GetImageListResponse) updates) => super.copyWith((message) => updates(message as GetImageListResponse)) as GetImageListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetImageListResponse create() => GetImageListResponse._();
  GetImageListResponse createEmptyInstance() => create();
  static $pb.PbList<GetImageListResponse> createRepeated() => $pb.PbList<GetImageListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetImageListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetImageListResponse>(create);
  static GetImageListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get repositories => $_getList(0);
}

