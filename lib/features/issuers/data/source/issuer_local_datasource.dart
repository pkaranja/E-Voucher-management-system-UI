import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import '../../../../core/database/database.dart';
import '../../../../core/helpers/app_exception.dart';
import '../database/issuer_db.dart';
import '../model/issuer_model.dart';
import 'issuer_datasource.dart';

class IssuerLocalDatasource extends IssuerDatasource {

  

  @override
  Future<Either<AppException, IssuerModel>> deleteOne({required String id}) {
    // TODO: implement deleteOne
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, IssuerModel>> getOne({required String id}) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, IssuerModel>> updateOne({required String id, required IssuerModel request}) {
    // TODO: implement updateOne
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, IssuerModel>> createOne( {required IssuerModel request}) async {
    try {
      final newIssuer = IssuerDB()
        ..id = request.id
        ..name = request.name
        ..email = request.email
        ..phone = request.phone
        ..hits = request.hits
        ..logo = request.logo
        ..minAmount = request.minAmount
        ..maxAmount = request.maxAmount
        ..popular = request.popular
        ..featured = request.featured
        ..status = request.status
        ..address = request.address
        ..website = request.website
        ..facebook = request.facebook
        ..instagram =request.instagram
        ..primaryColor = request.primaryColor
        ..secondaryColor = request.secondaryColor
        ..primaryFontColor =request.primaryFontColor
        ..secondaryFontColor = request.secondaryFontColor
        ..description = request.description;

      await isarDB.writeTxn(() async {
        await isarDB.issuers.put(newIssuer);
        await isarDB.issuers.put(newIssuer);
      });

      return Right(
        IssuerModel(
          id: request.id,
          name: request.name,
          email: request.email,
          phone: request.phone,
          hits: request.hits,
          logo: request.logo,
          minAmount: request.minAmount,
          maxAmount: request.maxAmount,
          popular: request.popular,
          featured: request.featured,
          status: request.status,
          address: request.address,
          website: request.website,
          facebook: request.facebook,
          instagram: request.instagram,
          primaryColor: request.primaryColor,
          secondaryColor: request.secondaryColor,
          primaryFontColor: request.primaryFontColor,
          secondaryFontColor: request.secondaryFontColor,
          description: request.description
        ),
      );
    } on DioException catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, List<IssuerModel>>> getAll() async {
    try {
      final response = await isarDB.issuers.where().findAll();
      final issuers = response.map((issuer) => IssuerModel(
        id: issuer.id,
        name: issuer.name ?? '',
        email: issuer.email ?? '',
        phone: issuer.phone ?? '',
        website: issuer.website,
        address: issuer.address,
        hits: issuer.hits ?? 0,
        logo: issuer.logo ?? '',
        facebook: issuer.facebook,
        instagram: issuer.instagram,
        primaryColor: issuer.primaryColor,
        secondaryColor: issuer.secondaryColor,
        primaryFontColor: issuer.primaryFontColor,
        secondaryFontColor: issuer.secondaryFontColor,
        description: issuer.description,
        minAmount: issuer.minAmount ?? '0',
        maxAmount: issuer.maxAmount ?? '0',
        popular: issuer.popular ?? false,
        featured: issuer.featured ?? false,
        status: issuer.status,

      )).toList();

      return Right(issuers);
    } on DioException catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }
  
}