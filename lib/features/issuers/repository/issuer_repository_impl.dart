import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zawadi/core/config/constants.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/helpers/network_detector.dart';
import '../../../core/http/api_provider.dart';
import '../data/model/issuer_model.dart';
import '../data/source/issuer_datasource.dart';
import '../data/source/issuer_local_datasource.dart';
import '../data/source/issuer_remote_datasource.dart';
import 'issuer_repository.dart';


final issuerDatasourceProvider = Provider<IssuerDatasource>( (ref) {
    var connectivity = ref.watch(connectivityStatusProvider);
    debugPrint(connectivity.toString());

    if (connectivity == ConnectivityStatus.isConnected) {
      //use api data
      final api = ref.read(apiProvider(Endpoints().baseUrl));
      return IssuerRemoteDatasource(api);
    } else {
      //use local data
      return IssuerLocalDatasource();
    }
  },
);


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
