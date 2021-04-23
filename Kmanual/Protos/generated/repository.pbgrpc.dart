///
//  Generated code. Do not modify.
//  source: repository.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'repository.pb.dart' as $0;
export 'repository.pb.dart';

class RepositoryClient extends $grpc.Client {
  static final _$getImageList =
      $grpc.ClientMethod<$0.GetImageListReuqest, $0.GetImageListResponse>(
          '/Repository/GetImageList',
          ($0.GetImageListReuqest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetImageListResponse.fromBuffer(value));
  static final _$getTagList =
      $grpc.ClientMethod<$0.GetTagListReuqest, $0.GetTagListResponse>(
          '/Repository/GetTagList',
          ($0.GetTagListReuqest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetTagListResponse.fromBuffer(value));
  static final _$getManifest =
      $grpc.ClientMethod<$0.GetManifestReuqest, $0.GetManifestResponse>(
          '/Repository/GetManifest',
          ($0.GetManifestReuqest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetManifestResponse.fromBuffer(value));

  RepositoryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetImageListResponse> getImageList(
      $0.GetImageListReuqest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getImageList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTagListResponse> getTagList(
      $0.GetTagListReuqest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTagList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetManifestResponse> getManifest(
      $0.GetManifestReuqest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getManifest, request, options: options);
  }
}

abstract class RepositoryServiceBase extends $grpc.Service {
  $core.String get $name => 'Repository';

  RepositoryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetImageListReuqest, $0.GetImageListResponse>(
            'GetImageList',
            getImageList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetImageListReuqest.fromBuffer(value),
            ($0.GetImageListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTagListReuqest, $0.GetTagListResponse>(
        'GetTagList',
        getTagList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTagListReuqest.fromBuffer(value),
        ($0.GetTagListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetManifestReuqest, $0.GetManifestResponse>(
            'GetManifest',
            getManifest_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetManifestReuqest.fromBuffer(value),
            ($0.GetManifestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetImageListResponse> getImageList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetImageListReuqest> request) async {
    return getImageList(call, await request);
  }

  $async.Future<$0.GetTagListResponse> getTagList_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetTagListReuqest> request) async {
    return getTagList(call, await request);
  }

  $async.Future<$0.GetManifestResponse> getManifest_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetManifestReuqest> request) async {
    return getManifest(call, await request);
  }

  $async.Future<$0.GetImageListResponse> getImageList(
      $grpc.ServiceCall call, $0.GetImageListReuqest request);
  $async.Future<$0.GetTagListResponse> getTagList(
      $grpc.ServiceCall call, $0.GetTagListReuqest request);
  $async.Future<$0.GetManifestResponse> getManifest(
      $grpc.ServiceCall call, $0.GetManifestReuqest request);
}
