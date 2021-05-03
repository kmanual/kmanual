///
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'project.pb.dart' as $0;
export 'project.pb.dart';

class ProjectsClient extends $grpc.Client {
  static final _$getList =
      $grpc.ClientMethod<$0.GetListRequest, $0.GetListResponse>(
          '/Projects/GetList',
          ($0.GetListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetListResponse.fromBuffer(value));
  static final _$create =
      $grpc.ClientMethod<$0.CreateReuqest, $0.CreateResponse>(
          '/Projects/Create',
          ($0.CreateReuqest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CreateResponse.fromBuffer(value));
  static final _$deploy =
      $grpc.ClientMethod<$0.DeployRequest, $0.DeployResponse>(
          '/Projects/Deploy',
          ($0.DeployRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DeployResponse.fromBuffer(value));

  ProjectsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetListResponse> getList($0.GetListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateResponse> create($0.CreateReuqest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeployResponse> deploy($0.DeployRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deploy, request, options: options);
  }
}

abstract class ProjectsServiceBase extends $grpc.Service {
  $core.String get $name => 'Projects';

  ProjectsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetListRequest, $0.GetListResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetListRequest.fromBuffer(value),
        ($0.GetListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateReuqest, $0.CreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateReuqest.fromBuffer(value),
        ($0.CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeployRequest, $0.DeployResponse>(
        'Deploy',
        deploy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeployRequest.fromBuffer(value),
        ($0.DeployResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetListResponse> getList_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetListRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$0.CreateResponse> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CreateReuqest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.DeployResponse> deploy_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeployRequest> request) async {
    return deploy(call, await request);
  }

  $async.Future<$0.GetListResponse> getList(
      $grpc.ServiceCall call, $0.GetListRequest request);
  $async.Future<$0.CreateResponse> create(
      $grpc.ServiceCall call, $0.CreateReuqest request);
  $async.Future<$0.DeployResponse> deploy(
      $grpc.ServiceCall call, $0.DeployRequest request);
}
