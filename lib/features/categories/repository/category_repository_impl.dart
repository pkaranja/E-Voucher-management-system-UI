import 'package:dartz/dartz.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/helpers/network_detector.dart';
import '../../../core/http/api_provider.dart';
import '../data/model/category_model.dart';
import '../data/source/category_datasource.dart';
import '../data/source/category_local_datasource.dart';
import '../data/source/category_remote_datasource.dart';
import 'category_repository.dart';

final categoryDatasourceProvider = Provider<CategoryDatasource>( (ref)  {
    var connectivity = ref.watch(connectivityStatusProvider);
    var connectivityResult = InternetConnection().hasInternetAccess;
    debugPrint(connectivity.toString());
    print(connectivityResult);

    if (connectivity == ConnectivityStatus.isConnected) {
      //use api data
      FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
      //String baseUrl = dotenv.env['API_BASE_URL'] ?? remoteConfig.getString('api_base');
      //String baseUrl = dotenv.get('API_BASE_URL');
      String baseUrl = 'http//${dotenv.get('API_BASE_URL')}';

      final api = ref.read(apiProvider(baseUrl));
      return CategoryRemoteDatasource(api);
    }else{
      //use local data
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
