import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import '../../../../core/database/database.dart';
import '../../../../core/helpers/app_exception.dart';
import '../database/category_db.dart';
import '../model/category_model.dart';
import 'category_datasource.dart';

class CategoryLocalDatasource extends CategoryDatasource {

  @override
  Future<Either<AppException, List<CategoryModel>>> getAll() async {
    try {
      final response = await isarDB.categories.where().findAll();
      final categories = response.map((category) => CategoryModel(
        id: category.id!,
        name: category.name!,
        icon: category.icon!,
        status: category.status!,
        backgroundColor: category.backgroundColor ?? 'F0F0F0',
        order: category.order!,
      )).toList();

      return Right(categories);
    } on DioException catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, CategoryModel>> getOne({required String id}) {
    // TODO: implement getOne
    throw UnimplementedError();
  }
  
}