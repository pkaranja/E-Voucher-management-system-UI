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
  Future<Either<AppException, CategoryModel>> createOne({ required CategoryModel request, }) async {
    final response = await _api.post( Endpoints.categoriesPath, { 'data': request.toRequest(), }, );

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

    final response = await _api.delete( "${Endpoints.categoriesPath}/$id", );

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
    final response = await _api.get( Endpoints.categoriesPath, );

    return response.when(
      success: (success) async {
        final responseDto = CategoryDTO.fromJson( success['content'] as Map<String, dynamic>,);
        // final List<CategoryModel> categoriesy = responseDto.content.map((e) => e.toModel()).toList();
        //
        // print(categoriesy);


        //final List<dynamic> content = success['content'];
        //final PaginationDTO pagination = PaginationDTO.fromJson(success);

        //final List<CategoryModel> categories = content.map((e) => CategoryModel.fromJson(e)).toList();
        //final List<CategoryModel> categories = content.map((category) => CategoryModel.fromJson(category)).toList();

        List<CategoryModel> categories = [];

        return Right(categories);
       // return Right(Tuple2(categories, pagination));
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
