import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zawadi/core/config/constants.dart';
import 'package:zawadi/core/helpers/network_state.dart';
import 'package:zawadi/features/gift_cards/data/enums/filter_type.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/http/api_provider.dart';
import '../data/model/giftcard_model.dart';
import '../data/source/giftcard_datasource.dart';
import '../data/source/giftcard_local_datasource.dart';
import '../data/source/giftcard_remote_datasource.dart';
import 'giftcard_repository.dart';

final giftcardDatasourceProvider = Provider<GiftcardDatasource>((ref) {
  final api = ref.read(apiProvider(Endpoints().baseUrl));
  final isDeviceConnected = ref.watch(networkStateProvider).isDeviceConnected;

  //TODO: Implement local data sources
  return GiftcardLocalDatasource();

});

final giftcardRepositoryProvider = Provider<GiftcardRepository>((ref) {
  final datasource = ref.watch(giftcardDatasourceProvider);
  final repository = GiftcardRepositoryImpl(datasource);
  return repository;
});

class GiftcardRepositoryImpl extends GiftcardRepository {
  GiftcardRepositoryImpl(this.datasource);
  final GiftcardDatasource datasource;

  @override
  Future<Either<AppException, GiftcardModel>> createOne( {required GiftcardModel request}) {
    return datasource.createOne(request: request);
  }

  @override
  Future<Either<AppException, GiftcardModel>> deleteOne( {required String id}) {
    return datasource.deleteOne(id: id);
  }



  @override
  Future<Either<AppException, GiftcardModel>> getOne( {required String id}) {
    return datasource.getOne(id: id);
  }

  @override
  Future<Either<AppException, GiftcardModel>> updateOne(
      {required String id, required GiftcardModel request}) {
    return datasource.updateOne(id: id, request: request);
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getPurchased({String? filter, FilterType? filterType}) {
    return datasource.getPurchased(filter, filterType);
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getAll({String? filter}) {
    return datasource.getAll(filter);
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getReceived({String? filter, FilterType? filterType}) {
    return datasource.getReceived(filter, filterType);
  }
}
