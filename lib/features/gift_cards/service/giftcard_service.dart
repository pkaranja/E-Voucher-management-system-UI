import 'package:dartz/dartz.dart';
import 'package:zawadi/features/gift_cards/data/enums/filter_type.dart';

import '../../../core/config/constants.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/http/api_provider.dart';
import '../data/dto/giftcard_dto.dart';
import '../data/model/giftcard_model.dart';
import '../data/source/giftcard_datasource.dart';

class GiftcardService extends GiftcardDatasource {
  GiftcardService(this._api);
  final ApiProvider _api;

  @override
  Future<Either<AppException, GiftcardModel>> createOne({
    required GiftcardModel request,
  }) async {
    final response = await _api.post( Endpoints.giftCardsPath,
      {
        'data': request.toRequest(),
      },
    );

    return response.when(
      success: (success) async {
        final responseDto = GiftcardDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final GiftcardModel giftcard = responseDto.content.toModel();
        return Right(giftcard);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, GiftcardModel>> deleteOne( {required String id}) async {
    late GiftcardModel giftcard;
    final findGiftcard = await getOne(id: id);
    findGiftcard.fold((l) {}, (r) {
      giftcard = r;
    });

    final response = await _api.delete( "${Endpoints.giftCardsPath}/$id", );
    return response.when(
      success: (success) async {
        return Right(giftcard);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getAll(String? filter) async {
    final response = await _api.get( Endpoints.giftCardsPath, );

    return response.when(
      success: (success) async {
        final responseDto = GiftcardDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final List<GiftcardModel> giftcards = responseDto.content.map((e) => e.toModel()).toList();

        return Right(giftcards);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getReceived(String? filter, FilterType? filterType) async {
      final response = await _api.get( Endpoints.giftCardsPath, );

      return response.when(
        success: (success) async {
          final responseDto = GiftcardDTO.fromJson(
            success as Map<String, dynamic>,
          );

          final List<GiftcardModel> giftcards = responseDto.content.map((e) => e.toModel()).toList();

          return Right(giftcards);
        },
        error: (error) {
          return Left(error);
        },
      );
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getPurchased(String? filter, FilterType? filterType) async {
    final response = await _api.get( Endpoints.giftCardsPath, );

    return response.when(
      success: (success) async {
        final responseDto = GiftcardDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final List<GiftcardModel> giftcards = responseDto.content.map((e) => e.toModel()).toList();

        return Right(giftcards);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, GiftcardModel>> getOne({  required String id, }) async {

    final response = await _api.get( "${Endpoints.giftCardsPath}/$id",);

    return response.when(
      success: (success) async {
        final responseDto = GiftcardDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final GiftcardModel giftcard = responseDto.content.toModel();
        return Right(giftcard);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, GiftcardModel>> updateOne( {required String id, required GiftcardModel request}) async {
    final response = await _api.put( "${Endpoints.giftCardsPath}/$id",
      {
        'data': request.toRequest(),
      },
    );

    return response.when(
      success: (success) async {
        final responseDto = GiftcardDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final GiftcardModel giftcard = responseDto.content.toModel();
        return Right(giftcard);
      },
      error: (error) {
        return Left(error);
      },
    );
  }
}