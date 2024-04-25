import 'package:dartz/dartz.dart';

import '../../../core/config/constants.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/http/api_provider.dart';
import '../data/dto/category_dto.dart';
import '../data/model/category_model.dart';
import '../data/source/category_datasource.dart';

class CategoryService extends CategoryDatasource {
  CategoryService(this._api);
  final ApiProvider _api;

  @override
  Future<Either<AppException, CategoryModel>> createOne({
    required CategoryModel request,
  }) async {
    final response = await _api.post(
      Endpoints.categoriesPath,
      {
        'data': request.toRequest(),
      },
    );

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

  @override
  Future<Either<AppException, CategoryModel>> deleteOne( {required int id}) async {
    late CategoryModel category;
    final findCategory = await getOne(id: id);
    findCategory.fold((l) {}, (r) {
      category = r;
    });

    final response = await _api.delete(
      "${Endpoints.categoriesPath}/$id",
    );

    return response.when(
      success: (success) async {
        return Right(category);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, List<CategoryModel>>> getAll() async {
    final response = await _api.get(
      Endpoints.categoriesPath,
    );

    return response.when(
      success: (success) async {
        final responseDto = CategoryDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final List<CategoryModel> categories =
        responseDto.content.map((e) => e.toModel()).toList();

        return Right(categories);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, CategoryModel>> getOne({  required int id, }) async {

    final response = await _api.get( "${Endpoints.categoriesPath}/$id",);

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

  @override
  Future<Either<AppException, CategoryModel>> updateOne( {required int id, required CategoryModel request}) async {
    final response = await _api.put( "${Endpoints.categoriesPath}/$id",
      {
        'data': request.toRequest(),
      },
    );

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
}