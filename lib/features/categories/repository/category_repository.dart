import 'package:dartz/dartz.dart';
import '../../../core/helpers/app_exception.dart';
import '../data/model/category_model.dart';

abstract class CategoryRepository {
  Future<Either<AppException, List<CategoryModel>>> getAll();

  Future<Either<AppException, CategoryModel>> getOne({ required String id, });
}