import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zawadi/core/config/constants.dart';
import 'package:zawadi/core/helpers/network_state.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/http/api_provider.dart';
import '../data/model/issuer_model.dart';
import '../data/source/issuer_datasource.dart';
import '../data/source/issuer_local_datasource.dart';
import '../data/source/issuer_remote_datasource.dart';
import 'issuer_repository.dart';

final issuerDatasourceProvider = Provider<IssuerDatasource>((ref) {
  final api = ref.read(apiProvider(Endpoints().baseUrl));
  final isDeviceConnected = ref.watch(networkStateProvider).isDeviceConnected;

  if (isDeviceConnected) {
    print("FETCH FROM REMOTE DATASOURCE");
    return IssuerRemoteDatasource(api);
  }else {
    print("FETCH FROM LOCAL DATASOURCE");
    return IssuerLocalDatasource();
  }
});

final issuerRepositoryProvider = Provider<IssuerRepository>((ref) {
  final datasource = ref.watch(issuerDatasourceProvider);
  final repository = IssuerRepositoryImpl(datasource);
  return repository;
});

class IssuerRepositoryImpl extends IssuerRepository {
  IssuerRepositoryImpl(this.datasource);
  final IssuerDatasource datasource;

  @override
  Future<Either<AppException, IssuerModel>> createOne( {required IssuerModel request}) {
    return datasource.createOne(request: request);
  }

  @override
  Future<Either<AppException, IssuerModel>> deleteOne( {required String id}) {
    return datasource.deleteOne(id: id);
  }

  @override
  Future<Either<AppException, List<IssuerModel>>> getAll() {
    return datasource.getAll();
  }

  @override
  Future<Either<AppException, IssuerModel>> getOne( {required String id}) {
    return datasource.getOne(id: id);
  }

  @override
  Future<Either<AppException, IssuerModel>> updateOne(
      {required String id, required IssuerModel request}) {
    return datasource.updateOne(id: id, request: request);
  }
}
