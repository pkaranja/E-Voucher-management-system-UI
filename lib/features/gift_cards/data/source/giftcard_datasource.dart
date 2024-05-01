import 'package:dartz/dartz.dart';
import 'package:zawadi/features/gift_cards/data/enums/filter_type.dart';
import '../../../../core/helpers/app_exception.dart';
import '../model/giftcard_model.dart';

abstract class GiftcardDatasource {
  Future<Either<AppException, List<GiftcardModel>>> getAll(String? filter);

  Future<Either<AppException, List<GiftcardModel>>> getReceived(String? filter, FilterType? filterType);

  Future<Either<AppException, List<GiftcardModel>>> getPurchased(String? filter, FilterType? filterType);

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
