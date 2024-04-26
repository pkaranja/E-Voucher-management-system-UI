import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/config/constants.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/helpers/network_state.dart';
import '../../../core/http/api_provider.dart';
import '../data/model/category_model.dart';
import '../data/source/category_datasource.dart';
import '../data/source/category_local_datasource.dart';
import '../data/source/category_remote_datasource.dart';
import 'category_repository.dart';

final categoryDatasourceProvider = Provider<CategoryDatasource>( (ref)  {
  final api = ref.read(apiProvider(Endpoints().baseUrl));
  final isDeviceConnected = ref.watch(networkStateProvider).isDeviceConnected;

    if (isDeviceConnected) {
      return CategoryRemoteDatasource(api);
    }else {
      return CategoryLocalDatasource();
    }
  },
);


final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  final datasource = ref.watch(categoryDatasourceProvider);
  final repository = CategoryRepositoryImpl(datasource);
  return repository;
});

class CategoryRepositoryImpl extends CategoryRepository {
  CategoryRepositoryImpl(this.datasource);
  final CategoryDatasource datasource;

  @override
  Future<Either<AppException, CategoryModel>> createOne( {required CategoryModel request}) {
    return datasource.createOne(request: request);
  }

  @override
  Future<Either<AppException, CategoryModel>> deleteOne( {required int id}) {
    return datasource.deleteOne(id: id);
  }

  @override
  Future<Either<AppException, List<CategoryModel>>> getAll() {
    return datasource.getAll();
  }

  @override
  Future<Either<AppException, CategoryModel>> getOne( {required int id}) {
    return datasource.getOne(id: id);
  }

  @override
  Future<Either<AppException, CategoryModel>> updateOne(
      {required int id, required CategoryModel request}) {
    return datasource.updateOne(id: id, request: request);
  }
}
