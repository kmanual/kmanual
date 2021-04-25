///
//  Generated code. Do not modify.
//  source: kubernetes.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'kubernetes.pb.dart' as $0;
export 'kubernetes.pb.dart';

class KubernetesClient extends $grpc.Client {
  static final _$getNamespaceList = $grpc.ClientMethod<
          $0.GetNamespaceListReuqest, $0.GetNamespaceListResponse>(
      '/Kubernetes/GetNamespaceList',
      ($0.GetNamespaceListReuqest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetNamespaceListResponse.fromBuffer(value));
  static final _$getKServiceList =
      $grpc.ClientMethod<$0.GetKServiceListReuqest, $0.GetKServiceListResponse>(
          '/Kubernetes/GetKServiceList',
          ($0.GetKServiceListReuqest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetKServiceListResponse.fromBuffer(value));

  KubernetesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetNamespaceListResponse> getNamespaceList(
      $0.GetNamespaceListReuqest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNamespaceList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetKServiceListResponse> getKServiceList(
      $0.GetKServiceListReuqest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKServiceList, request, options: options);
  }
}

abstract class KubernetesServiceBase extends $grpc.Service {
  $core.String get $name => 'Kubernetes';

  KubernetesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetNamespaceListReuqest,
            $0.GetNamespaceListResponse>(
        'GetNamespaceList',
        getNamespaceList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetNamespaceListReuqest.fromBuffer(value),
        ($0.GetNamespaceListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetKServiceListReuqest,
            $0.GetKServiceListResponse>(
        'GetKServiceList',
        getKServiceList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetKServiceListReuqest.fromBuffer(value),
        ($0.GetKServiceListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetNamespaceListResponse> getNamespaceList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetNamespaceListReuqest> request) async {
    return getNamespaceList(call, await request);
  }

  $async.Future<$0.GetKServiceListResponse> getKServiceList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetKServiceListReuqest> request) async {
    return getKServiceList(call, await request);
  }

  $async.Future<$0.GetNamespaceListResponse> getNamespaceList(
      $grpc.ServiceCall call, $0.GetNamespaceListReuqest request);
  $async.Future<$0.GetKServiceListResponse> getKServiceList(
      $grpc.ServiceCall call, $0.GetKServiceListReuqest request);
}
