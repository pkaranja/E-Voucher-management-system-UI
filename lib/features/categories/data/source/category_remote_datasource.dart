import 'package:dartz/dartz.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/helpers/app_exception.dart';
import '../../../../core/helpers/data/pagination/pagination_dto.dart';
import '../../../../core/http/api_provider.dart';
import '../dto/category_dto.dart';
import '../model/category_model.dart';
import 'category_datasource.dart';

class CategoryRemoteDatasource extends CategoryDatasource {
  CategoryRemoteDatasource(this._api);
  final ApiProvider _api;

  @override
  Future<Either<AppException, List<CategoryModel>>> getAll() async {
    final response = await _api.get( Endpoints.categoriesPath, );

    return response.when(
      success: (success) async {

        //TODO: Implement local datasource & pagination
        final List<dynamic> content = success;
        final List<CategoryModel> categories = content.map((issuer) => CategoryModel.fromJson(issuer)).toList();

        return Right(categories);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, CategoryModel>> getOne({ required int id, }) async {
    final response = await _api.get( "${Endpoints.categoriesPath}/$id", );

    return response.when(
      success: (success) async {
        final responseDto = CategoryDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final CategoryModel category = responseDto.content.toModel();
        return Right(category);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  //No create allowed
  @override
  Future<Either<AppException, CategoryModel>> createOne({required CategoryModel request}) {
    // TODO: implement createOne
    throw UnimplementedError();
  }

  //No delete allowed
  @override
  Future<Either<AppException, CategoryModel>> deleteOne({required int id}) {
    // TODO: implement deleteOne
    throw UnimplementedError();
  }

  //No update allowed
  @override
  Future<Either<AppException, CategoryModel>> updateOne({required int id, required CategoryModel request}) {
    // TODO: implement updateOne
    throw UnimplementedError();
  }

}
