import 'package:dartz/dartz.dart';
import '../../../../core/helpers/app_exception.dart';
import '../model/category_model.dart';

abstract class CategoryDatasource {
  Future<Either<AppException, List<CategoryModel>>> getAll();

  Future<Either<AppException, CategoryModel>> getOne({
    required int id,
  });

  Future<Either<AppException, CategoryModel>> createOne({
    required CategoryModel request,
  });

  Future<Either<AppException, CategoryModel>> updateOne({
    required int id,
    required CategoryModel request,
  });

  Future<Either<AppException, CategoryModel>> deleteOne({
    required int id,
  });

}
