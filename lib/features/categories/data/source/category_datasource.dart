import 'package:dartz/dartz.dart';
import '../../../../core/helpers/app_exception.dart';
import '../model/category_model.dart';

abstract class CategoryDatasource {
  Future<Either<AppException, List<CategoryModel>>> getAll();

  Future<Either<AppException, CategoryModel>> getOne({
    required String id,
  });
}
