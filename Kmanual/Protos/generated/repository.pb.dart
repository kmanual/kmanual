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

class GetTagListReuqest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTagListReuqest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetTagListReuqest._() : super();
  factory GetTagListReuqest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GetTagListReuqest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTagListReuqest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTagListReuqest clone() => GetTagListReuqest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTagListReuqest copyWith(void Function(GetTagListReuqest) updates) => super.copyWith((message) => updates(message as GetTagListReuqest)) as GetTagListReuqest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTagListReuqest create() => GetTagListReuqest._();
  GetTagListReuqest createEmptyInstance() => create();
  static $pb.PbList<GetTagListReuqest> createRepeated() => $pb.PbList<GetTagListReuqest>();
  @$core.pragma('dart2js:noInline')
  static GetTagListReuqest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTagListReuqest>(create);
  static GetTagListReuqest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetTagListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTagListResponse', createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..hasRequiredFields = false
  ;

  GetTagListResponse._() : super();
  factory GetTagListResponse({
    $core.Iterable<$core.String>? tags,
  }) {
    final _result = create();
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory GetTagListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTagListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTagListResponse clone() => GetTagListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTagListResponse copyWith(void Function(GetTagListResponse) updates) => super.copyWith((message) => updates(message as GetTagListResponse)) as GetTagListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTagListResponse create() => GetTagListResponse._();
  GetTagListResponse createEmptyInstance() => create();
  static $pb.PbList<GetTagListResponse> createRepeated() => $pb.PbList<GetTagListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTagListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTagListResponse>(create);
  static GetTagListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tags => $_getList(0);
}

class GetManifestReuqest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetManifestReuqest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tag')
    ..hasRequiredFields = false
  ;

  GetManifestReuqest._() : super();
  factory GetManifestReuqest({
    $core.String? name,
    $core.String? tag,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (tag != null) {
      _result.tag = tag;
    }
    return _result;
  }
  factory GetManifestReuqest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetManifestReuqest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetManifestReuqest clone() => GetManifestReuqest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetManifestReuqest copyWith(void Function(GetManifestReuqest) updates) => super.copyWith((message) => updates(message as GetManifestReuqest)) as GetManifestReuqest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetManifestReuqest create() => GetManifestReuqest._();
  GetManifestReuqest createEmptyInstance() => create();
  static $pb.PbList<GetManifestReuqest> createRepeated() => $pb.PbList<GetManifestReuqest>();
  @$core.pragma('dart2js:noInline')
  static GetManifestReuqest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetManifestReuqest>(create);
  static GetManifestReuqest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tag => $_getSZ(1);
  @$pb.TagNumber(2)
  set tag($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearTag() => clearField(2);
}

class GetManifestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetManifestResponse', createEmptyInstance: create)
    ..aOM<Config>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: Config.create)
    ..hasRequiredFields = false
  ;

  GetManifestResponse._() : super();
  factory GetManifestResponse({
    Config? config,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    return _result;
  }
  factory GetManifestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetManifestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetManifestResponse clone() => GetManifestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetManifestResponse copyWith(void Function(GetManifestResponse) updates) => super.copyWith((message) => updates(message as GetManifestResponse)) as GetManifestResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetManifestResponse create() => GetManifestResponse._();
  GetManifestResponse createEmptyInstance() => create();
  static $pb.PbList<GetManifestResponse> createRepeated() => $pb.PbList<GetManifestResponse>();
  @$core.pragma('dart2js:noInline')
  static GetManifestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetManifestResponse>(create);
  static GetManifestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Config get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(Config v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  Config ensureConfig() => $_ensure(0);
}

class Config extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Config', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediaType', protoName: 'mediaType')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'digest')
    ..hasRequiredFields = false
  ;

  Config._() : super();
  factory Config({
    $core.String? mediaType,
    $core.int? size,
    $core.String? digest,
  }) {
    final _result = create();
    if (mediaType != null) {
      _result.mediaType = mediaType;
    }
    if (size != null) {
      _result.size = size;
    }
    if (digest != null) {
      _result.digest = digest;
    }
    return _result;
  }
  factory Config.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Config.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Config clone() => Config()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Config copyWith(void Function(Config) updates) => super.copyWith((message) => updates(message as Config)) as Config; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Config create() => Config._();
  Config createEmptyInstance() => create();
  static $pb.PbList<Config> createRepeated() => $pb.PbList<Config>();
  @$core.pragma('dart2js:noInline')
  static Config getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Config>(create);
  static Config? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mediaType => $_getSZ(0);
  @$pb.TagNumber(1)
  set mediaType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMediaType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(2)
  set size($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get digest => $_getSZ(2);
  @$pb.TagNumber(3)
  set digest($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDigest() => $_has(2);
  @$pb.TagNumber(3)
  void clearDigest() => clearField(3);
}

