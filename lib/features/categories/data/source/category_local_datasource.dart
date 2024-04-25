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
  Future<Either<AppException, CategoryModel>> createOne( {required CategoryModel request}) async {
    try {
      final newCategory = CategoryDB()
        ..name = request.name
        ..icon = request.icon
        ..status = request.status
        ..backgroundColor = request.backgroundColor
        ..order = request.order;

      await isarDB.writeTxn(() async {
        await isarDB.categories.put(newCategory);
      });

      return Right(
        CategoryModel(
          id: 0,
          name: request.name,
          icon: request.icon,
          status: request.status,
          backgroundColor: request.backgroundColor,
          order: request.order,
        ),
      );
    } on DioException catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

 

  @override
  Future<Either<AppException, List<CategoryModel>>> getAll() async {
    try {
      final response = await isarDB.categories.where().findAll();
      final categories = response.map((category) => CategoryModel(
        id: category.id,
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
  Future<Either<AppException, CategoryModel>> deleteOne({required int id}) {
    // TODO: implement deleteOne
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, CategoryModel>> getOne({required int id}) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, CategoryModel>> updateOne({required int id, required CategoryModel request}) {
    // TODO: implement updateOne
    throw UnimplementedError();
  }
  
}