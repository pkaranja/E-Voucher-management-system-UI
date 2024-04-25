import 'package:dartz/dartz.dart';
import '../../../core/helpers/app_exception.dart';
import '../data/model/issuer_model.dart';

abstract class IssuerRepository {
  Future<Either<AppException, List<IssuerModel>>> getAll();

  Future<Either<AppException, IssuerModel>> getOne({
    required String id,
  });

  Future<Either<AppException, IssuerModel>> createOne({
    required IssuerModel request,
  });

  Future<Either<AppException, IssuerModel>> updateOne({
    required String id,
    required IssuerModel request,
  });

  Future<Either<AppException, IssuerModel>> deleteOne({
    required String id,
  });
}