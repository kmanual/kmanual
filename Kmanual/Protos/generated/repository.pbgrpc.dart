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

  RepositoryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetImageListResponse> getImageList(
      $0.GetImageListReuqest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getImageList, request, options: options);
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
  }

  $async.Future<$0.GetImageListResponse> getImageList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetImageListReuqest> request) async {
    return getImageList(call, await request);
  }

  $async.Future<$0.GetImageListResponse> getImageList(
      $grpc.ServiceCall call, $0.GetImageListReuqest request);
}
