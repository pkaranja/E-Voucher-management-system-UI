import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import '../../../../controllers/profile_controller.dart';
import '../../../../core/database/database.dart';
import '../../../../core/helpers/app_exception.dart';
import '../../../../models/profile_model.dart';
import '../database/giftcard_db.dart';
import '../enums/filter_type.dart';
import '../model/giftcard_model.dart';
import 'giftcard_datasource.dart';

class GiftcardLocalDatasource extends GiftcardDatasource {
  ProfileModel? userProfile;
  ProfileController profileController = ProfileController();

  Future<void> _initProfile() async {
    userProfile = await profileController.getProfileFromPreferences();
    while (userProfile == null) {
      await Future.delayed(const Duration(milliseconds: 100));
      // Delay 100 milliseconds before checking again
      userProfile = await profileController.getProfileFromPreferences();
    }
  }

  @override
  Future<Either<AppException, GiftcardModel>> deleteOne({required String id}) {
    // TODO: implement deleteOne
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, GiftcardModel>> getOne({required String id}) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, GiftcardModel>> updateOne({required String id, required GiftcardModel request}) {
    // TODO: implement updateOne
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, GiftcardModel>> createOne( {required GiftcardModel request}) async {
    try {
      final newGiftcard = GiftcardDB()
        ..id = request.id
        ..code = request.code
        ..cvv = request.cvv
        ..dateCreated = request.dateCreated
        ..expirationDate = request.expirationDate
        ..lastUpdated = request.lastUpdated
        ..title = request.title
        ..message = request.message
        ..themeId = request.themeId
        ..recipient = request.recipient
        ..value = request.value
        ..purchaserId = request.purchaserId
        ..transactionId = request.transactionId
        ..issuerId = request.issuerId
        ..status = request.status;

      await isarDB.writeTxn(() async {
        await isarDB.giftcards.put(newGiftcard);
      });

      return Right(
        GiftcardModel(
          id: request.id,
          code: request.code,
          cvv: request.cvv,
          dateCreated: request.dateCreated,
          expirationDate: request.expirationDate,
          lastUpdated: request.lastUpdated,
          title: request.title,
          message: request.message,
          themeId: request.themeId,
          recipient: request.recipient,
          value: request.value,
          purchaserId: request.purchaserId,
          transactionId: request.transactionId,
          issuerId: request.issuerId,
          status: request.status
        ),
      );
    } on DioException catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getAll(String? filter, ) async {

    try {
      if (filter != null){

      }
      final response = await isarDB.giftcards.where().sortByDateCreatedDesc().findAll();
      final giftcards = response.map((giftcard) => GiftcardModel(
        id: giftcard.id,
        code: giftcard.code ?? '',
        cvv: giftcard.cvv ?? 0,
        dateCreated: giftcard.dateCreated,
        expirationDate: giftcard.expirationDate,
        lastUpdated: giftcard.lastUpdated,
        title: giftcard.title,
        message: giftcard.message,
        themeId: giftcard.themeId,
        recipient: giftcard.recipient ?? '',
        value: giftcard.value,
        purchaserId: giftcard.purchaserId,
        transactionId: giftcard.transactionId ?? '',
        issuerId: giftcard.issuerId,
        status: giftcard.status,
      )).toList();

      return Right(giftcards);
    } on DioException catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getReceived(String? filter, FilterType? filterType) async {
    await _initProfile();
    if (userProfile == null) {
      throw Exception("User profile not initialized yet");
    }

    try {
      List<GiftcardDB> response;
      if (filter != null && filterType != null) {
        switch (filterType) {
          case FilterType.byTitle:
            response = await isarDB.giftcards.filter().titleContains(filter).sortByDateCreatedDesc().findAll();
            break;
          case FilterType.byPurchaserId:
            response = await isarDB.giftcards.filter().recipientEqualTo(userProfile!.profileId).sortByDateCreatedDesc().findAll();
            break;
          default:
            response = await isarDB.giftcards.filter().recipientEqualTo(userProfile!.profileId).sortByDateCreatedDesc().findAll();
            break;
        }
      } else {
        response = await isarDB.giftcards.filter().recipientEqualTo(userProfile!.profileId).sortByDateCreatedDesc().findAll();
      }

      final giftcards = response.map((giftcard) => GiftcardModel(
        id: giftcard.id,
        code: giftcard.code ?? '',
        cvv: giftcard.cvv ?? 0,
        dateCreated: giftcard.dateCreated,
        expirationDate: giftcard.expirationDate,
        lastUpdated: giftcard.lastUpdated,
        title: giftcard.title,
        message: giftcard.message,
        themeId: giftcard.themeId,
        recipient: giftcard.recipient ?? '',
        value: giftcard.value,
        purchaserId: giftcard.purchaserId,
        transactionId: giftcard.transactionId ?? '',
        issuerId: giftcard.issuerId,
        status: giftcard.status,
      )).toList();

      return Right(giftcards);
    } on DioException catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, List<GiftcardModel>>> getPurchased(String? filter, FilterType? filterType) async {
    await _initProfile();
    if (userProfile == null) {
      throw Exception("User profile not initialized yet");
    }

    print("GET Purchased from ${userProfile!.profileId!}");
    try {
      List<GiftcardDB> response;
      if (filter != null && filterType != null) {
        switch (filterType) {
          case FilterType.byTitle:
            response = await isarDB.giftcards.filter().titleContains(filter).sortByDateCreatedDesc().findAll();
            break;
          case FilterType.byPurchaserId:
            response = await isarDB.giftcards.filter().purchaserIdEqualTo(userProfile!.profileId!).sortByDateCreatedDesc().findAll();
            break;
          default:
            response = await isarDB.giftcards.filter().purchaserIdEqualTo(userProfile!.profileId!).sortByDateCreatedDesc().findAll();
            break;
        }
      } else {
        response = await isarDB.giftcards.filter().purchaserIdEqualTo(userProfile!.profileId!).sortByDateCreatedDesc().findAll();
      }

      final giftcards = response.map((giftcard) => GiftcardModel(
        id: giftcard.id,
        code: giftcard.code ?? '',
        cvv: giftcard.cvv ?? 0,
        dateCreated: giftcard.dateCreated,
        expirationDate: giftcard.expirationDate,
        lastUpdated: giftcard.lastUpdated,
        title: giftcard.title,
        message: giftcard.message,
        themeId: giftcard.themeId,
        recipient: giftcard.recipient ?? '',
        value: giftcard.value,
        purchaserId: giftcard.purchaserId,
        transactionId: giftcard.transactionId ?? '',
        issuerId: giftcard.issuerId,
        status: giftcard.status,
      )).toList();

      return Right(giftcards);
    } on DioException catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }
  
}