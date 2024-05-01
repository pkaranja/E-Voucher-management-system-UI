import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/helpers/app_exception.dart';
import '../data/enums/filter_type.dart';
import '../data/model/giftcard_model.dart';

abstract class GiftcardRepository {
  Future<Either<AppException, List<GiftcardModel>>> getAll({
    String? filter
});

  Future<Either<AppException, List<GiftcardModel>>> getReceived({ String? filter, FilterType? filterType });

  Future<Either<AppException, List<GiftcardModel>>> getPurchased();

  Future<Either<AppException, GiftcardModel>> getOne({
    required String id,
  });

  Future<Either<AppException, GiftcardModel>> createOne({
    required GiftcardModel request,
  });

  Future<Either<AppException, GiftcardModel>> updateOne({
    required String id,
    required GiftcardModel request,
  });

  Future<Either<AppException, GiftcardModel>> deleteOne({
    required String id,
  });
}